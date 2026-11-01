
#include "hgemm.cuh"
#include <cstddef>
#include <cstdint>

namespace hgemm_v5 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 16;

constexpr int TM = 4;
constexpr int TN = 4;
constexpr int TX = 16;
constexpr int TY = 16;
constexpr int THREADS = TX * TY;

// 发起一次 4-byte Global -> Shared 异步拷贝
// valid=false 时用 cp.async 的零填充机制写入 4 个零字节
__device__ __forceinline__ void cp_async4(
    half* dst, const half* base, size_t offset, bool valid)
{
    uint32_t smem_addr =
        static_cast<uint32_t>(__cvta_generic_to_shared(dst));

    // 无效位置使用安全的 Global 地址，不构造越界指针
    const half* src = valid ? base + offset : base;

    if (valid) {
        asm volatile(
            "cp.async.ca.shared.global [%0], [%1], 4;"
            :: "r"(smem_addr), "l"(src) : "memory");
    } else {
        asm volatile(
            "cp.async.ca.shared.global [%0], [%1], 4, 0;"
            :: "r"(smem_addr), "l"(src) : "memory");
    }
}

__device__ __forceinline__ void cp_async_commit()
{
    asm volatile("cp.async.commit_group;" ::: "memory");
}

__device__ __forceinline__ void cp_async_wait()
{
    asm volatile("cp.async.wait_group 0;" ::: "memory");
}

__global__ void hgemm_v5_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    __shared__ __align__(16) half As[BM][BK];
    __shared__ __align__(16) half Bs[BK][BN];

    int tx = threadIdx.x;
    int ty = threadIdx.y;
    int tid = ty * TX + tx;

    int rowBase = blockIdx.y * BM + ty;
    int colBase = blockIdx.x * BN + tx;

    float acc[TM][TN] = {};
    const half zero = __float2half_rn(0.0f);

    // 两个矩阵行跨度均为偶数，满足 half2 的 4-byte 对齐
    const bool use_async = (K % 2 == 0) && (N % 2 == 0);

    for (int kb = 0; kb < K; kb += BK) {

        // ====================================================
        // 1. Global -> Shared Memory
        // ====================================================

        if (use_async) {
            // A: 64×16 = 512 half2
            // B: 16×64 = 512 half2
            // 256 threads，每线程各搬运两个 A/B half2

            #pragma unroll
            for (int pass = 0; pass < 2; ++pass) {
                int index = tid + pass * THREADS;

                // Load A tile
                int ar = index / (BK / 2);
                int ac = (index % (BK / 2)) * 2;

                int aRow = blockIdx.y * BM + ar;
                int aCol = kb + ac;

                bool validA = (aRow < M && aCol + 1 < K);
                size_t offsetA = static_cast<size_t>(aRow) * K + aCol;

                cp_async4(&As[ar][ac], A, offsetA, validA);

                // Load B tile
                int br = index / (BN / 2);
                int bc = (index % (BN / 2)) * 2;

                int bRow = kb + br;
                int bCol = blockIdx.x * BN + bc;

                bool validB = (bRow < K && bCol + 1 < N);
                size_t offsetB = static_cast<size_t>(bRow) * N + bCol;

                cp_async4(&Bs[br][bc], B, offsetB, validB);
            }

            // 提交当前线程发起的异步拷贝
            cp_async_commit();

            // 等待当前线程之前提交的全部异步拷贝完成
            cp_async_wait();
        } else {
            // 奇数行跨度：使用 v3 标量加载方式兜底
            #pragma unroll
            for (int i = 0; i < TM; ++i) {
                int row = rowBase + i * TY;
                int col = kb + tx;

                As[ty + i * TY][tx] = (row < M && col < K)
                    ? A[static_cast<size_t>(row) * K + col] : zero;
            }

            #pragma unroll
            for (int j = 0; j < TN; ++j) {
                int row = kb + ty;
                int col = colBase + j * TX;

                Bs[ty][tx + j * TX] = (row < K && col < N)
                    ? B[static_cast<size_t>(row) * N + col] : zero;
            }
        }

        // 必须等 Block 内所有线程完成 Tile 搬运
        __syncthreads();

        // ====================================================
        // 2. Compute: 4×4 Register Tiling
        // 完全沿用 v3/v4 的计算逻辑
        // ====================================================

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

        // 确保所有线程使用完当前 Tile 才允许覆盖
        __syncthreads();
    }

    // ====================================================
    // 3. Write C
    // ====================================================

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

} // namespace hgemm_v5

void launch_hgemm_v5(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    dim3 block(16, 16);
    dim3 grid((N + 63) / 64, (M + 63) / 64);

    hgemm_v5::hgemm_v5_kernel<<<grid, block, 0, stream>>>(
        A, B, C, M, N, K);
}
