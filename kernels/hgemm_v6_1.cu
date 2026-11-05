#include "hgemm.cuh"
#include <mma.h>
#include <cstddef>

namespace hgemm_v6_1 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 32;
constexpr int THREADS = 256;
// 每行增加 16 half，改变 bank 映射并保持 WMMA 的 32-byte 对齐。
constexpr int AS = BK + 16;
constexpr int BS = BN + 16;

__global__ void hgemm_v6_1_kernel(
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
        #pragma unroll
        for (int index = tid; index < BM * BK; index += THREADS) {
            int row = index / BK;
            int col = index % BK;
            storage.input.As[row][col] = (blockRow + row < M && kb + col < K)
                ? A[static_cast<size_t>(blockRow + row) * K + kb + col]
                : __float2half_rn(0.0f);
        }

        #pragma unroll
        for (int index = tid; index < BK * BN; index += THREADS) {
            int row = index / BN;
            int col = index % BN;
            storage.input.Bs[row][col] = (kb + row < K && blockCol + col < N)
                ? B[static_cast<size_t>(kb + row) * N + blockCol + col]
                : __float2half_rn(0.0f);
        }

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

} // namespace hgemm_v6_1

void launch_hgemm_v6_1(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(256);
    dim3 grid((N + 63) / 64, (M + 63) / 64);
    hgemm_v6_1::hgemm_v6_1_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
