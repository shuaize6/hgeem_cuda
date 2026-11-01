
#include "hgemm.cuh"

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 16;

constexpr int TM = 4;
constexpr int TN = 4;

constexpr int TX = 16;
constexpr int TY = 16;

__global__ void hgemm_v3_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    __shared__ half As[BM][BK];
    __shared__ half Bs[BK][BN+16]; // 避免 bank conflict

    int tx = threadIdx.x;
    int ty = threadIdx.y;

    int rowBase = blockIdx.y * BM + ty;
    int colBase = blockIdx.x * BN + tx;

    // 每个线程维护 4×4 个 FP32 累加器
    float acc[TM][TN] = {};

    for (int kb = 0; kb < K; kb += BK) {

        // 1. 合作加载 A Tile：64×16
        #pragma unroll
        for (int i = 0; i < TM; ++i) {
            int row = rowBase + i * TY;
            int col = kb + tx;

            As[ty + i * TY][tx] = (row < M && col < K)
                ? A[static_cast<size_t>(row) * K + col]
                : __float2half_rn(0.0f);
        }

        // 2. 合作加载 B Tile：16×64
        #pragma unroll
        for (int j = 0; j < TN; ++j) {
            int row = kb + ty;
            int col = colBase + j * TX;

            Bs[ty][tx + j * TX] = (row < K && col < N)
                ? B[static_cast<size_t>(row) * N + col]
                : __float2half_rn(0.0f);
        }

        // 等待整个 Tile 加载完成
        __syncthreads();

        // 3. Register Tiling：4×4 外积累加
        #pragma unroll
        for (int k = 0; k < BK; ++k) {
            float a[TM];
            float b[TN];

            #pragma unroll
            for (int i = 0; i < TM; ++i)
                a[i] = __half2float(As[ty + i * TY][k]);

            #pragma unroll
            for (int j = 0; j < TN; ++j)
                b[j] = __half2float(Bs[k][tx + j * TX]);

            #pragma unroll
            for (int i = 0; i < TM; ++i) {
                #pragma unroll
                for (int j = 0; j < TN; ++j)
                    acc[i][j] += a[i] * b[j];
            }
        }

        // 防止下一轮覆盖尚未使用完的 Shared Memory
        __syncthreads();
    }

    // 4. 将 16 个累加器写回 C
    #pragma unroll
    for (int i = 0; i < TM; ++i) {
        #pragma unroll
        for (int j = 0; j < TN; ++j) {
            int row = rowBase + i * TY;
            int col = colBase + j * TX;

            if (row < M && col < N)
                C[static_cast<size_t>(row) * N + col] =
                    __float2half_rn(acc[i][j]);
        }
    }
}

void launch_hgemm_v3(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(TX, TY);
    dim3 grid((N + BN - 1) / BN, (M + BM - 1) / BM);

    hgemm_v3_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
