#pragma once

#include <cuda_runtime.h>
#include <cuda_fp16.h>

void launch_hgemm_v0(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream = 0);

void launch_hgemm_v1(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream = 0);

void launch_hgemm_v2(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream = 0);

void launch_hgemm_v3(const half *A, const half *B, half *C, int M, int N, int K, cudaStream_t stream = 0);

void launch_hgemm_v4(
    const half *A, const half *B, half *C,
    int M, int N, int K,
    cudaStream_t stream = 0);

void launch_hgemm_v5(
    const half* A, const half* B, half* C,
    int M, int N, int K,
    cudaStream_t stream = 0
);

void launch_hgemm_v5_1(
    const half* A, const half* B, half* C,
    int M, int N, int K,
    cudaStream_t stream = 0
);
void launch_hgemm_v5_2(
    const half* A, const half* B, half* C,
    int M, int N, int K,
    cudaStream_t stream = 0
);

void launch_hgemm_v6(
    const half* A, const half* B, half* C,
    int M, int N, int K,
    cudaStream_t stream = 0
);
