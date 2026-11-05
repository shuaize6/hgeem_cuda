#include "hgemm.cuh"
#include <mma.h>
#include <cstddef>
#include <cstdint>

namespace hgemm_v6_2 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 32;
constexpr int THREADS = 256;
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

__global__ void hgemm_v6_2_kernel(
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
        float Cs[BM][BN];
    };
    __shared__ __align__(32) SharedStorage storage;

    int tid = threadIdx.x;
    int warp = tid / 32;
    int warpRow = (warp / 4) * 32;
    int warpCol = (warp % 4) * 16;
    int blockRow = blockIdx.y * BM;
    int blockCol = blockIdx.x * BN;

    // 八个 warp 各计算相邻的 32×16 输出，复用一个 B fragment。
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_a, 16, 16, 16,
                           half, nvcuda::wmma::row_major> a;
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_b, 16, 16, 16,
                           half, nvcuda::wmma::row_major> b;
    nvcuda::wmma::fragment<nvcuda::wmma::accumulator, 16, 16, 16, float> acc[2];
    nvcuda::wmma::fill_fragment(acc[0], 0.0f);
    nvcuda::wmma::fill_fragment(acc[1], 0.0f);

    for (int kb = 0; kb < K; kb += BK) {
        // A: 每行 4 个包，warp 覆盖 8 行；B: 每行 8 个包，warp 覆盖 4 行。
        // 两个逻辑 tile 各有 256 个包，256 threads 每线程各搬运一个。
        int ar = tid / (BK / 8);
        int ac = (tid % (BK / 8)) * 8;
        int br = tid / (BN / 8);
        int bc = (tid % (BN / 8)) * 8;
        load8(&storage.input.As[ar][ac], A, M, K, blockRow + ar, kb + ac);
        load8(&storage.input.Bs[br][bc], B, K, N, kb + br, blockCol + bc);

        // WMMA 是 warp collective，不能代替跨 warp 生产/消费的 block barrier。
        __syncthreads();
        #pragma unroll
        for (int k = 0; k < BK; k += 16) {
            nvcuda::wmma::load_matrix_sync(b, &storage.input.Bs[k][warpCol], BS);
            #pragma unroll
            for (int i = 0; i < 2; ++i) {
                nvcuda::wmma::load_matrix_sync(a, &storage.input.As[warpRow + i * 16][k], AS);
                nvcuda::wmma::mma_sync(acc[i], a, b, acc[i]);
            }
        }
        __syncthreads(); // 全部 warp 读完，下一轮才可覆盖 shared tile。
    }

    // Fragment 内元素映射不透明，先按行主序存到 shared，再做边界写回。
    #pragma unroll
    for (int i = 0; i < 2; ++i)
        nvcuda::wmma::store_matrix_sync(&storage.Cs[warpRow + i * 16][warpCol], acc[i], BN,
                                        nvcuda::wmma::mem_row_major);
    __syncthreads();

    #pragma unroll
    for (int index = tid; index < BM * BN; index += THREADS) {
        int row = index / BN;
        int col = index % BN;
        if (blockRow + row < M && blockCol + col < N)
            C[static_cast<size_t>(blockRow + row) * N + blockCol + col] =
                __float2half_rn(storage.Cs[row][col]);
    }
}

} // namespace hgemm_v6_2

void launch_hgemm_v6_2(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(256);
    dim3 grid((N + 63) / 64, (M + 63) / 64);
    hgemm_v6_2::hgemm_v6_2_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
