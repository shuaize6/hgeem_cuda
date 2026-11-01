#include "hgemm.cuh"
#include <mma.h>
#include <cstddef>

namespace hgemm_v6 {

constexpr int BM = 32;
constexpr int BN = 32;
constexpr int BK = 16;
constexpr int THREADS = 128;

__global__ void hgemm_v6_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    // WMMA 指针要求 32-byte 对齐；half leading dimension 是 8 的倍数。
    __shared__ __align__(32) half As[BM][BK];
    __shared__ __align__(32) half Bs[BK][BN];
    __shared__ __align__(32) float Cs[BM][BN];

    int tid = threadIdx.x;
    int warp = tid / 32;
    int warpRow = (warp / 2) * 16;
    int warpCol = (warp % 2) * 16;
    int blockRow = blockIdx.y * BM;
    int blockCol = blockIdx.x * BN;

    // 四个 warp 分别计算 32×32 输出的四个相邻 16×16 子块。
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_a, 16, 16, 16,
                           half, nvcuda::wmma::row_major> a;
    nvcuda::wmma::fragment<nvcuda::wmma::matrix_b, 16, 16, 16,
                           half, nvcuda::wmma::row_major> b;
    nvcuda::wmma::fragment<nvcuda::wmma::accumulator, 16, 16, 16, float> acc;
    nvcuda::wmma::fill_fragment(acc, 0.0f);

    for (int kb = 0; kb < K; kb += BK) {
        #pragma unroll
        for (int index = tid; index < BM * BK; index += THREADS) {
            int row = index / BK;
            int col = index % BK;
            As[row][col] = (blockRow + row < M && kb + col < K)
                ? A[static_cast<size_t>(blockRow + row) * K + kb + col]
                : __float2half_rn(0.0f);
        }

        #pragma unroll
        for (int index = tid; index < BK * BN; index += THREADS) {
            int row = index / BN;
            int col = index % BN;
            Bs[row][col] = (kb + row < K && blockCol + col < N)
                ? B[static_cast<size_t>(kb + row) * N + blockCol + col]
                : __float2half_rn(0.0f);
        }

        // WMMA 是 warp collective，不能代替跨 warp 生产/消费的 block barrier。
        __syncthreads();
        nvcuda::wmma::load_matrix_sync(a, &As[warpRow][0], BK);
        nvcuda::wmma::load_matrix_sync(b, &Bs[0][warpCol], BN);
        nvcuda::wmma::mma_sync(acc, a, b, acc);
        __syncthreads(); // 全部 warp 读完，下一轮才可覆盖 shared tile。
    }

    // Fragment 内元素映射不透明，先按行主序存到 shared，再做边界写回。
    nvcuda::wmma::store_matrix_sync(&Cs[warpRow][warpCol], acc, BN,
                                    nvcuda::wmma::mem_row_major);
    __syncthreads();

    #pragma unroll
    for (int index = tid; index < BM * BN; index += THREADS) {
        int row = index / BN;
        int col = index % BN;
        if (blockRow + row < M && blockCol + col < N)
            C[static_cast<size_t>(blockRow + row) * N + blockCol + col] =
                __float2half_rn(Cs[row][col]);
    }
}

} // namespace hgemm_v6

void launch_hgemm_v6(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(128);
    dim3 grid((N + 31) / 32, (M + 31) / 32);
    hgemm_v6::hgemm_v6_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
