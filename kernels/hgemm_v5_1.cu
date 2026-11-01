
#include "hgemm.cuh"
#include <cstddef>
#include <cstdint>

namespace hgemm_v5_1 {

constexpr int BM = 64;
constexpr int BN = 64;
constexpr int BK = 16;

constexpr int TM = 4;
constexpr int TN = 4;
constexpr int TX = 16;
constexpr int TY = 16;
constexpr int THREADS = TX * TY;

// 4-byte Global -> Shared 异步拷贝
__device__ __forceinline__ void cp_async4(
    half* dst, const half* src, bool valid)
{
    uint32_t smem = static_cast<uint32_t>(__cvta_generic_to_shared(dst));

    if (valid) {
        asm volatile(
            "cp.async.ca.shared.global [%0], [%1], 4;"
            :: "r"(smem), "l"(src) : "memory");
    } else {
        asm volatile(
            "cp.async.ca.shared.global [%0], [%1], 4, 0;"
            :: "r"(smem), "l"(src) : "memory");
    }
}

__device__ __forceinline__ void commit_group()
{
    asm volatile("cp.async.commit_group;" ::: "memory");
}

__device__ __forceinline__ void wait_group_1()
{
    asm volatile("cp.async.wait_group 1;" ::: "memory");
}

__device__ __forceinline__ void wait_group_0()
{
    asm volatile("cp.async.wait_group 0;" ::: "memory");
}

// 只发起某个 K Tile 的异步搬运，不在此等待
__device__ __forceinline__ void load_tile_async(
    half* smA, half* smB,
    const half* A, const half* B,
    int M, int N, int K,
    int blockRow, int blockCol, int kb, int tid)
{
    #pragma unroll
    for (int pass = 0; pass < 2; ++pass) {
        int index = tid + pass * THREADS;

        // A Tile: 64×16
        int ar = index / (BK / 2);
        int ac = (index % (BK / 2)) * 2;

        int aRow = blockRow * BM + ar;
        int aCol = kb + ac;
        bool validA = (aRow < M && aCol + 1 < K);

        const half* aSrc = validA
            ? A + static_cast<size_t>(aRow) * K + aCol : A;

        cp_async4(smA + ar * BK + ac, aSrc, validA);

        // B Tile: 16×64
        int br = index / (BN / 2);
        int bc = (index % (BN / 2)) * 2;

        int bRow = kb + br;
        int bCol = blockCol * BN + bc;
        bool validB = (bRow < K && bCol + 1 < N);

        const half* bSrc = validB
            ? B + static_cast<size_t>(bRow) * N + bCol : B;

        cp_async4(smB + br * BN + bc, bSrc, validB);
    }
}

__global__ void hgemm_v5_1_kernel(
    const half* __restrict__ A,
    const half* __restrict__ B,
    half* __restrict__ C,
    int M, int N, int K)
{
    // Ping-Pong Double Buffer
    __shared__ __align__(16) half As[2][BM][BK];
    __shared__ __align__(16) half Bs[2][BK][BN];

    int tx = threadIdx.x;
    int ty = threadIdx.y;
    int tid = ty * TX + tx;

    int rowBase = blockIdx.y * BM + ty;
    int colBase = blockIdx.x * BN + tx;

    int num_tiles = (K + BK - 1) / BK;
    float acc[TM][TN] = {};

    // ====================================================
    // 1. Prologue: 预加载 Tile 0
    // ====================================================

    load_tile_async(
        &As[0][0][0], &Bs[0][0][0],
        A, B, M, N, K,
        blockIdx.y, blockIdx.x, 0, tid);

    commit_group();

    // ====================================================
    // 2. Pipeline: 计算当前 Tile，预取下一 Tile
    // ====================================================

    for (int tile = 0; tile < num_tiles; ++tile) {
        int current = tile & 1;
        int next = current ^ 1;

        bool hasNext = (tile + 1 < num_tiles);

        // 先向另一份 Buffer 发起下一块的异步加载
        if (hasNext) {
            load_tile_async(
                &As[next][0][0], &Bs[next][0][0],
                A, B, M, N, K,
                blockIdx.y, blockIdx.x,
                (tile + 1) * BK, tid);

            commit_group();

            // 当前 Tile 必须完成；允许最新的下一块仍在搬运
            wait_group_1();
        } else {
            // 最后一块：不存在后续预取，等待所有剩余拷贝
            wait_group_0();
        }

        // 等待其他线程的当前 Tile 数据也准备完成
        __syncthreads();

        // 当前 Tile：4×4 Register Tiling
        #pragma unroll
        for (int k = 0; k < BK; ++k) {
            float a[TM];
            float b[TN];

            #pragma unroll
            for (int i = 0; i < TM; ++i)
                a[i] = __half2float(As[current][ty + i * TY][k]);

            #pragma unroll
            for (int j = 0; j < TN; ++j)
                b[j] = __half2float(Bs[current][k][tx + j * TX]);

            #pragma unroll
            for (int i = 0; i < TM; ++i) {
                #pragma unroll
                for (int j = 0; j < TN; ++j)
                    acc[i][j] += a[i] * b[j];
            }
        }

        // 全部线程计算结束，才能在后续迭代复用该 Buffer
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

} // namespace hgemm_v5_1

void launch_hgemm_v5_1(
    const half* A, const half* B, half* C,
    int M, int N, int K, cudaStream_t stream)
{
    // 奇数行跨度暂时复用 v5.0 的安全兜底实现
    if ((K & 1) || (N & 1)) {
        launch_hgemm_v5(A, B, C, M, N, K, stream);
        return;
    }

    dim3 block(16, 16);
    dim3 grid((N + 63) / 64, (M + 63) / 64);

    hgemm_v5_1::hgemm_v5_1_kernel<<<grid, block, 0, stream>>>(
        A, B, C, M, N, K);
}
