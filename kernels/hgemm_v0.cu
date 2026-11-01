#include "hgemm.cuh"

__global__ void hgemm_v0_kernel(const half *__restrict__ A, const half *__restrict__ B, half *__restrict__ C, int M, int N, int K)
{
    int row = blockIdx.y * blockDim.y + threadIdx.y;
    int col = blockIdx.x * blockDim.x + threadIdx.x;

    if (row >= M || col >= N)
    {
        return;
    }

    float sum = 0.0f;

    for (int k = 0; k < K; ++k)
    {

        float a = __half2float(A[row * K + k]);
        float b = __half2float(B[k * N + col]);

        sum += a * b;
    }

    C[row * N + col] = __float2half_rn(sum);
}

void launch_hgemm_v0(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream)
{
    dim3 block(16, 16);

    dim3 grid(
        (N + block.x - 1) / block.x,
        (M + block.y - 1) / block.y);

    hgemm_v0_kernel<<<grid, block, 0, stream>>>(A, B, C, M, N, K);
}
