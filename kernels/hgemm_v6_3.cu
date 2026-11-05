#include "hgemm.cuh"
#include <mma.h>
#include <cstddef>
#include <cstdint>

namespace hgemm_v6_3 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 32;
constexpr int THREADS = 128;
// 每行增加 16 half，改变 bank 映射并保持 WMMA 的 32-byte 对齐。
constexpr int AS = BK + 16;
constexpr int BS = BN + 16;

// dst 由 shared 行跨度和 8-half 列偏移保证 16-byte 对齐。
// 完整且对齐的 Global 包使用 128-bit 搬运，其余逐元素加载/补零。
__device__ __forceinline__ void load8(
    half* dst, const half* base, int rows, int cols, int row, int col)
{
    const bool firstValid = row < rows && col < cols;
    const half* src = firstValid ? base + static_cast<size_t>(row) * cols + col : base;
    uint4 value;
    if (firstValid && col + 7 < cols &&
        (reinterpret_cast<uintptr_t>(src) & 15) == 0) {
        value = *reinterpret_cast<const uint4*>(src);
    } else {
        half* elements = reinterpret_cast<half*>(&value);
        #pragma unroll
        for (int i = 0; i < 8; ++i)
            elements[i] = (firstValid && col + i < cols)
                ? src[i] : __float2half_rn(0.0f);
    }
    *reinterpret_cast<uint4*>(dst) = value;
}

__global__ void hgemm_v6_3_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    // WMMA 指针要求 32-byte 对齐；half leading dimension 是 8 的倍数。
    // 输入只在 K 循环内存活；最后一个 block barrier 后才复用为输出暂存。
    union SharedStorage {
        struct {
            half As[BM][AS];
            half Bs[BK][BS];
        } input;
        float Cs[BM / 2][BN];
    };
    __shared__ __align__(32) SharedStorage storage;

    int tid = threadIdx.x;
    int warp = tid / 32;
    int warpRow = (warp / 2) * 32;
    int warpCol = (warp % 2) * 32;
    int blockRow = blockIdx.y * BM;
    int blockCol = blockIdx.x * BN;

    // 四个 warp 各计算 32×32 输出，A/B fragment 在两个方向复用。
    // 每个 k16 步，整个 block 的 fragment 加载由 24 次降为 16 次。
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_a, 16, 16, 16,
                           half, nvcuda::wmma::row_major> a[2];
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_b, 16, 16, 16,
                           half, nvcuda::wmma::row_major> b;
    nvcuda::wmma::fragment<nvcuda::wmma::accumulator, 16, 16, 16, float> acc[2][2];
    #pragma unroll
    for (int i = 0; i < 2; ++i)
        #pragma unroll
        for (int j = 0; j < 2; ++j)
            nvcuda::wmma::fill_fragment(acc[i][j], 0.0f);

    for (int kb = 0; kb < K; kb += BK) {
        // 仍按 8 half 包协作搬运，每线程各加载两个 A/B 包。
        // 每个 warp 的包映射不变，第二轮处理后半个 tile。
        #pragma unroll
        for (int index = tid; index < BM * BK / 8; index += THREADS) {
            int ar = index / (BK / 8);
            int ac = (index % (BK / 8)) * 8;
            int br = index / (BN / 8);
            int bc = (index % (BN / 8)) * 8;
            load8(&storage.input.As[ar][ac], A, M, K, blockRow + ar, kb + ac);
            load8(&storage.input.Bs[br][bc], B, K, N, kb + br, blockCol + bc);
        }

        // WMMA 是 warp collective，不能代替跨 warp 生产/消费的 block barrier。
        __syncthreads();
        #pragma unroll
        for (int k = 0; k < BK; k += 16) {
            #pragma unroll
            for (int i = 0; i < 2; ++i)
                nvcuda::wmma::load_matrix_sync(a[i], &storage.input.As[warpRow + i * 16][k], AS);
            #pragma unroll
            for (int j = 0; j < 2; ++j) {
                nvcuda::wmma::load_matrix_sync(b, &storage.input.Bs[k][warpCol + j * 16], BS);
                #pragma unroll
                for (int i = 0; i < 2; ++i)
                    nvcuda::wmma::mma_sync(acc[i][j], a[i], b, acc[i][j]);
            }
        }
        __syncthreads(); // 全部 warp 读完，下一轮才可覆盖 shared tile。
    }

    // 分两轮写回每个 warp 的上下 16×32，输出暂存只需 32×64 float。
    // union 的峰值由 16 KiB 降至输入的 11 KiB，增加可驻留 block 数。
    #pragma unroll
    for (int i = 0; i < 2; ++i) {
        #pragma unroll
        for (int j = 0; j < 2; ++j)
            nvcuda::wmma::store_matrix_sync(&storage.Cs[warpRow / 2][warpCol + j * 16], acc[i][j], BN,
                                            nvcuda::wmma::mem_row_major);
        __syncthreads();

        #pragma unroll
        for (int index = tid; index < BM / 2 * BN; index += THREADS) {
            int row = index / BN;
            int col = index % BN;
            int outputRow = blockRow + (row / 16) * 32 + i * 16 + row % 16;
            if (outputRow < M && blockCol + col < N)
                C[static_cast<size_t>(outputRow) * N + blockCol + col] =
                    __float2half_rn(storage.Cs[row][col]);
        }
        __syncthreads(); // 所有线程读完暂存区，下一轮才可覆盖。
    }

}

} // namespace hgemm_v6_3

void launch_hgemm_v6_3(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(hgemm_v6_3::THREADS);
    dim3 grid((N + 63) / 64, (M + 63) / 64);
    hgemm_v6_3::hgemm_v6_3_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
