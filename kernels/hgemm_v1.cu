#include "hgemm.cuh"

constexpr int TILE = 16;

__global__ void hgemm_v1_kernel(const half *__restrict__ A, const half *__restrict__ B, half *__restrict__ C, int M, int N, int K)
{
    __shared__ half As[TILE][TILE];
    __shared__ half Bs[TILE][TILE];

    int tx = threadIdx.x;
    int ty = threadIdx.y;

    int row = blockIdx.y * TILE + ty;
    int col = blockIdx.x * TILE + tx;

    float sum = 0.0f;

    int num_tiles = (K + TILE - 1) / TILE;

    for (int tile = 0; tile < num_tiles; ++tile)
    {

        // ------------------------------
        // 1. load A tile
        // ------------------------------

        int a_col = tile * TILE + tx;

        if (row < M && a_col < K)
        {
            As[ty][tx] = A[row * K + a_col];
        }
        else
        {
            As[ty][tx] = __float2half(0.0f);
        }

        // ------------------------------
        // 2. load B tile
        // ------------------------------

        int b_row = tile * TILE + ty;//根据tile和ty计算B矩阵的行索引

        if (b_row < K && col < N)
        {
            Bs[ty][tx] = B[b_row * N + col];
        }
        else
        {
            Bs[ty][tx] = __float2half(0.0f);
        }

        // 确保整个 tile 已经加载完成
        __syncthreads();

        // ------------------------------
        // 3. compute current tile
        // ------------------------------

#pragma unroll
        for (int k = 0; k < TILE; ++k)
        {

            float a =
                __half2float(As[ty][k]);

            float b =
                __half2float(Bs[k][tx]);

            sum += a * b;
        }

        // 确保所有线程已经使用完当前 tile
        // 才能覆盖 shared memory
        __syncthreads();
    }

    // ------------------------------
    // 4. write result
    // ------------------------------

    if (row < M && col < N)
    {
        C[row * N + col] =
            __float2half_rn(sum);
    }
}

void launch_hgemm_v1(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream)
{
    dim3 block(TILE, TILE);

    dim3 grid(
        (N + TILE - 1) / TILE,
        (M + TILE - 1) / TILE);

    hgemm_v1_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
