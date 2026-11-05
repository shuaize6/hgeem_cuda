cmake_minimum_required(VERSION 3.20)

project(HGEMM_CUDA LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)

# RTX 3060 / Ampere
set(CMAKE_CUDA_ARCHITECTURES 86)

find_package(CUDAToolkit REQUIRED)

add_executable(
    bench_hgemm

    benchmark/bench_hgemm.cu
    kernels/hgemm_v0.cu
    kernels/hgemm_v1.cu
    kernels/hgemm_v2.cu
    kernels/hgemm_v3.cu
    kernels/hgemm_v4.cu
    kernels/hgemm_v5.cu
    kernels/hgemm_v5_1.cu
    kernels/hgemm_v5_2.cu
    kernels/hgemm_v6.cu
    kernels/hgemm_v6_1.cu
    kernels/hgemm_v6_2.cu
    kernels/hgemm_v6_3.cu
)

target_include_directories(
    bench_hgemm PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(
    bench_hgemm PRIVATE
    CUDA::cudart
    CUDA::cublas
)

target_compile_options(
    bench_hgemm PRIVATE
    $<$<COMPILE_LANGUAGE:CUDA>:-O3>
    $<$<COMPILE_LANGUAGE:CUDA>:-lineinfo>
)

# 按需显示寄存器、shared memory 和 spill 用量，默认保持原编译输出。
option(HGEMM_PTXAS_VERBOSE "Print CUDA kernel resource usage" OFF)
if(HGEMM_PTXAS_VERBOSE)
    target_compile_options(bench_hgemm PRIVATE
        $<$<COMPILE_LANGUAGE:CUDA>:--ptxas-options=-v>
    )
endif()
