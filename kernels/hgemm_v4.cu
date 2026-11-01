
#include "hgemm.cuh"

namespace hgemm_v4 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 16;

constexpr int TM = 4;
constexpr int TN = 4;

constexpr int TX = 16;
constexpr int TY = 16;
constexpr int THREADS = TX * TY;

__global__ void hgemm_v4_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    // 显式保证 Shared Memory 的基础地址满足向量化存储对齐要求
    __shared__ __align__(16) half As[BM][BK];
    __shared__ __align__(16) half Bs[BK][BN];

    int tx = threadIdx.x;
    int ty = threadIdx.y;
    int tid = ty * TX + tx;

    int rowBase = blockIdx.y * BM + ty;
    int colBase = blockIdx.x * BN + tx;

    half zero = __float2half_rn(0.0f);
    float acc[TM][TN] = {};

    for (int kb = 0; kb < K; kb += BK) {

        // =====================================================
        // 1. Vectorized Global -> Shared Memory
        // 每个线程负责 2 个 half2(A) 和 2 个 half2(B)
        // =====================================================

        #pragma unroll
        for (int pass = 0; pass < 2; ++pass) {
            int index = tid + pass * THREADS;

            // ---------------------
            // Load A tile: 64 × 16
            // ---------------------
            int ar = index / (BK / 2);
            int ac = (index % (BK / 2)) * 2;

            int aRow = blockIdx.y * BM + ar;
            int aCol = kb + ac;

            half2 aVec;

            // 行跨度为偶数且两个元素均合法时，使用 half2
            if ((K % 2 == 0) && aRow < M && aCol + 1 < K) {
                aVec = *reinterpret_cast<const half2*>(
                    A + static_cast<size_t>(aRow) * K + aCol);
            } else {
                half a0 = (aRow < M && aCol < K)
                    ? A[static_cast<size_t>(aRow) * K + aCol] : zero;

                half a1 = (aRow < M && aCol + 1 < K)
                    ? A[static_cast<size_t>(aRow) * K + aCol + 1] : zero;

                aVec = __halves2half2(a0, a1);
            }

            *reinterpret_cast<half2*>(&As[ar][ac]) = aVec;

            // ---------------------
            // Load B tile: 16 × 64
            // ---------------------
            int br = index / (BN / 2);
            int bc = (index % (BN / 2)) * 2;

            int bRow = kb + br;
            int bCol = blockIdx.x * BN + bc;

            half2 bVec;

            if ((N % 2 == 0) && bRow < K && bCol + 1 < N) {
                bVec = *reinterpret_cast<const half2*>(
                    B + static_cast<size_t>(bRow) * N + bCol);
            } else {
                half b0 = (bRow < K && bCol < N)
                    ? B[static_cast<size_t>(bRow) * N + bCol] : zero;

                half b1 = (bRow < K && bCol + 1 < N)
                    ? B[static_cast<size_t>(bRow) * N + bCol + 1] : zero;

                bVec = __halves2half2(b0, b1);
            }

            *reinterpret_cast<half2*>(&Bs[br][bc]) = bVec;
        }

        __syncthreads();

        // =====================================================
        // 2. Register Tiling: 4 × 4
        // 与 v3 保持相同的计算方式
        // =====================================================

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

        __syncthreads();
    }

    // =====================================================
    // 3. Write output
    // =====================================================

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

} // namespace hgemm_v4

void launch_hgemm_v4(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(16, 16);
    dim3 grid((N + 63) / 64, (M + 63) / 64);

    hgemm_v4::hgemm_v4_kernel<<<grid, block, 0, stream>>>(
        A, B, C, M, N, K);
}
