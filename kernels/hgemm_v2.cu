
#include "hgemm.cuh"

constexpr int TILE = 16;
constexpr int BM = 32;
constexpr int BN = 32;

__global__ void hgemm_v2_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    __shared__ half As[BM][TILE];
    __shared__ half Bs[TILE][BN];

    int tx = threadIdx.x;
    int ty = threadIdx.y;

    int row0 = blockIdx.y * BM + ty;
    int row1 = row0 + TILE;
    int col0 = blockIdx.x * BN + tx;
    int col1 = col0 + TILE;

    float c00 = 0.0f, c01 = 0.0f;
    float c10 = 0.0f, c11 = 0.0f;

    for (int kb = 0; kb < K; kb += TILE) {
        int a_col = kb + tx;
        int b_row = kb + ty;

        // 每个线程合作加载 2 个 A、2 个 B
        As[ty][tx] = (row0 < M && a_col < K)
            ? A[row0 * K + a_col] : __float2half_rn(0.0f);

        As[ty + TILE][tx] = (row1 < M && a_col < K)
            ? A[row1 * K + a_col] : __float2half_rn(0.0f);

        Bs[ty][tx] = (b_row < K && col0 < N)
            ? B[b_row * N + col0] : __float2half_rn(0.0f);

        Bs[ty][tx + TILE] = (b_row < K && col1 < N)
            ? B[b_row * N + col1] : __float2half_rn(0.0f);

        __syncthreads();

        #pragma unroll
        for (int k = 0; k < TILE; ++k) {
            float a0 = __half2float(As[ty][k]);
            float a1 = __half2float(As[ty + TILE][k]);
            float b0 = __half2float(Bs[k][tx]);
            float b1 = __half2float(Bs[k][tx + TILE]);

            c00 += a0 * b0;
            c01 += a0 * b1;
            c10 += a1 * b0;
            c11 += a1 * b1;
        }

        __syncthreads();
    }

    if (row0 < M && col0 < N) C[row0 * N + col0] = __float2half_rn(c00);
    if (row0 < M && col1 < N) C[row0 * N + col1] = __float2half_rn(c01);
    if (row1 < M && col0 < N) C[row1 * N + col0] = __float2half_rn(c10);
    if (row1 < M && col1 < N) C[row1 * N + col1] = __float2half_rn(c11);
}

void launch_hgemm_v2(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(TILE, TILE);
    dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);

    hgemm_v2_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
