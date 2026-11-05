# v6_3 原始文本记录

整理日期：2026-11-05。本文件整理已有执行记录，未重新运行实验。每节保留原文件名与内容，展示时仅去除行尾空白；SHA256 对应本地原始文件。失败尝试和最终结果均保留，解释见对应分析报告。原始 Profile、完整指标 CSV、SASS 与源码快照已解包保留本地；位置规则见 [结果索引](README.md)。

## raw/v63_baseline_check.log

SHA256：`d79c2706138c125f8725a70020bd9930bf487ac7d85b93e9354acf92ff74b47a`

````text
check,v6.2,512,512,512,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,512,512,512,full_cublas_bad=0,cpu256_bad=0
check,v6.2,1024,1024,1024,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,1024,1024,1024,full_cublas_bad=0,cpu256_bad=0
check,v6.2,2048,2048,2048,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,2048,2048,2048,full_cublas_bad=0,cpu256_bad=0
check,v6.2,4096,4096,4096,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,4096,4096,4096,full_cublas_bad=0,cpu256_bad=0
check,v6.2,512,2048,1024,full_cublas_bad=768,cpu256_bad=0
check,cuBLAS,512,2048,1024,full_cublas_bad=0,cpu256_bad=0
````

## raw/v63_baseline_final_check.log

SHA256：`e79b5708b2eddf06ab461e46cfe7def9828073a67fd277c79851ef396923543f`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_build.log

SHA256：`d5e557be148d91e2293fbb35ee83b11a6b9cb28884cbd348088d3a8c5a86eae0`

````text
[ 21%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
[ 21%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v0.cu.o
[ 21%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v1.cu.o
[ 28%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v2.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v0_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v0_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 26 registers, used 0 barriers, 388 bytes cmem[0]
ptxas info    : Compile time = 9.514 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v1_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v1_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 35 registers, used 1 barriers, 1024 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 9.040 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v2_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v2_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 40 registers, used 1 barriers, 2048 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 19.081 ms
[ 42%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v3.cu.o
[ 42%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v4.cu.o
[ 50%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v3_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v3_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 43 registers, used 1 barriers, 4608 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 44.696 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 37.754 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 60 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 41.883 ms
ptxas info    : 0 bytes gmem
[ 57%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_1.cu.o
[ 64%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_2.cu.o
[ 71%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 65 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 33.262 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 32.606 ms
[ 78%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_1.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 27.804 ms
[ 85%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_2.cu.o
[ 92%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_3.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 43.859 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_217hgemm_v6_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_217hgemm_v6_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 56 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 24.281 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_317hgemm_v6_3_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_317hgemm_v6_3_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 62 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 22.105 ms
[100%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v63_build_baseline.log

SHA256：`2a0762fed1d99dbcf18bb88a75d0db075f27ad560c770aa5e9c2a4f590cda0b4`

````text
[  7%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
ptxas info    : 0 bytes gmem
[ 15%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v63_build_baseline_final.log

SHA256：`2a0762fed1d99dbcf18bb88a75d0db075f27ad560c770aa5e9c2a4f590cda0b4`

````text
[  7%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
ptxas info    : 0 bytes gmem
[ 15%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v63_build_diagnostic.log

SHA256：`2a0762fed1d99dbcf18bb88a75d0db075f27ad560c770aa5e9c2a4f590cda0b4`

````text
[  7%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
ptxas info    : 0 bytes gmem
[ 15%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v63_config.log

SHA256：`3df68569c5e7e48d4a3993044a7f75c810a2eca0153861147eb8aab64fe2fdae`

````text
-- Configuring done (4.9s)
-- Generating done (0.0s)
-- Build files have been written to: /home/xu/projects/HGEMM-CUDA/build
````

## raw/v63_config_final.log

SHA256：`11be2c1d5a400c6868851e5159f56d954c0abfd1f4a94075dd86f82c4ddcbe77`

````text
-- Configuring done (4.8s)
-- Generating done (0.0s)
-- Build files have been written to: /home/xu/projects/HGEMM-CUDA/build
````

## raw/v63_diagnostic_check.log

SHA256：`d2d753d91b9e0c2d0bfcb96e8e14f8bdcab1a55e32f405f035d80137890af264`

````text
check,v6.2,512,512,512,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,512,512,512,full_cublas_bad=0,cpu256_bad=0
check,v6.2,1024,1024,1024,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,1024,1024,1024,full_cublas_bad=0,cpu256_bad=0
check,v6.2,2048,2048,2048,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,2048,2048,2048,full_cublas_bad=0,cpu256_bad=0
check,v6.2,4096,4096,4096,full_cublas_bad=0,cpu256_bad=0
check,cuBLAS,4096,4096,4096,full_cublas_bad=0,cpu256_bad=0
mismatch,0,1186,got=7.46484,cublas=7.46875,cpu=7.46484
mismatch,2,918,got=-9.80469,cublas=-9.79688,cpu=-9.80469
mismatch,3,1255,got=9.11719,cublas=9.10938,cpu=9.11719
mismatch,4,283,got=-11.25,cublas=-11.2422,cpu=-11.25
mismatch,4,1846,got=8.60156,cublas=8.59375,cpu=8.60156
mismatch,5,1025,got=6.55469,cublas=6.55078,cpu=6.55469
mismatch,5,2027,got=-7.71875,cublas=-7.72266,cpu=-7.71875
mismatch,6,432,got=-7.54688,cublas=-7.54297,cpu=-7.54688
check,v6.2,512,2048,1024,full_cublas_bad=768,cpu256_bad=0
check,cuBLAS,512,2048,1024,full_cublas_bad=0,cpu256_bad=0
````

## raw/v63_environment.log

SHA256：`b3d1f6ccae6787110443b3c07993db74a471aacbecc2a621ff15efe5863fd5f1`

````text
NVIDIA (R) Nsight Compute Command Line Profiler
Copyright (c) 2018-2024 NVIDIA Corporation
Version 2025.1.0.0 (build 35237751) (public-release)
NVIDIA (R) Compute Sanitizer
Copyright (c) 2020-2025 NVIDIA Corporation
Version 2025.1.0.0 (build 35351055) (public-release)
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2025 NVIDIA Corporation
Built on Wed_Jan_15_19:20:09_PST_2025
Cuda compilation tools, release 12.8, V12.8.61
Build cuda_12.8.r12.8/compiler.35404655_0
g++ (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
Copyright (C) 2023 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

cmake version 3.28.3

CMake suite maintained and supported by Kitware (kitware.com/cmake).
Thu Nov  5 18:20:52 2026
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 590.52.01              Driver Version: 591.74         CUDA Version: 13.1     |
+-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA GeForce RTX 3060 ...    On  |   00000000:01:00.0  On |                  N/A |
| N/A   60C    P3             23W /  124W |    3007MiB /   6144MiB |     14%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+

+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI              PID   Type   Process name                        GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|  No running processes found                                                             |
+-----------------------------------------------------------------------------------------+
CMAKE_BUILD_TYPE:STRING=
CMAKE_CUDA_COMPILER:UNINITIALIZED=/usr/local/cuda-12.8/bin/nvcc
CMAKE_CXX_COMPILER:FILEPATH=/usr/bin/c++
````

## raw/v63_final_build.log

SHA256：`8fb0e41de18d90e82b0bd1fc2eacefa34d21d09b804798004af64423203059bb`

````text
[  7%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_3.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_317hgemm_v6_3_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_317hgemm_v6_3_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 56 registers, used 1 barriers, 11264 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 41.948 ms
[ 14%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v63_final_memcheck.log

SHA256：`60f6012df72e24f3b1691c81346f196f5a7657496132f613a5c8e3f7b315d575`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v63_final_profile_cublas_1024.log

SHA256：`2787675190027585500f2e1f2492eda3013be7aef5990eee92ec659a80651581`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_cublas_1024 --csv --log-file build/v63_final_profile_cublas_1024.csv ./build/bench_hgemm --profile cublas 1024 1024 1024
````

## raw/v63_final_profile_cublas_4096.log

SHA256：`82e8699b6177a64006c108568a66aaf81a82b0570592ca2cf3a444a2383b7883`

````text
/usr/local/cuda-12.8/bin/ncu --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_cublas_4096 --csv --log-file build/v63_final_profile_cublas_4096.csv ./build/bench_hgemm --profile cublas 4096 4096 4096
````

## raw/v63_final_profile_cublas_4096_filter_failure.log

SHA256：`15920242f31997f2a190599a50c399bdc53f18723c8184da745bb7a88782bad5`

````text
==PROF== Connected to process 28092 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Disconnected from process 28092
==WARNING== No kernels were profiled.
Available Kernels:
1. Kernel2
````

## raw/v63_final_profile_v6_2_1024.log

SHA256：`ef8acb584e15328bc94e38c60373abff0245e90b5b058de4d7853578ac99f986`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_v6_2_1024 --csv --log-file build/v63_final_profile_v6_2_1024.csv ./build/bench_hgemm --profile v6_2 1024 1024 1024
````

## raw/v63_final_profile_v6_2_4096.log

SHA256：`ace9dd933ae2ced70585709c4eda704d4a24b2183fc5e783c79df2fe986a6e44`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_v6_2_4096 --csv --log-file build/v63_final_profile_v6_2_4096.csv ./build/bench_hgemm --profile v6_2 4096 4096 4096
````

## raw/v63_final_profile_v6_3_1024.log

SHA256：`7e171424e1d5b8df08bb7111176de051db2a88b1743eeb432335d5f2b06aab91`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_v6_3_1024 --csv --log-file build/v63_final_profile_v6_3_1024.csv ./build/bench_hgemm --profile v6_3 1024 1024 1024
````

## raw/v63_final_profile_v6_3_4096.log

SHA256：`869abf035aad6da1abe9346a5890255207ca1d8e284ad0041ddba18e25c226e5`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_final_profile_v6_3_4096 --csv --log-file build/v63_final_profile_v6_3_4096.csv ./build/bench_hgemm --profile v6_3 4096 4096 4096
````

## raw/v63_final_racecheck.log

SHA256：`67de3cd44c94f304215b5eb3cc8d95b4ee84e2aa556d8992869cc58c7c2feba0`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v63_final_synccheck.log

SHA256：`60f6012df72e24f3b1691c81346f196f5a7657496132f613a5c8e3f7b315d575`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v63_final_table.log

SHA256：`b576321f753de4a2a6b3d2d68a0b4a9e065aa0a761b8cc5c274030a0460708e4`

````text
HGEMM Benchmark
M = 1024, N = 1024, K = 1024

Correctness
v0 naive     Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v1 shared    Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v2 register  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v3 register  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v4 half2     Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5 cp.async  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5.1 double  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5.2 bounds  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v6 WMMA      Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.1 pad     Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.2 vector  Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.3 reuse   Max error: 0, Mean error: 0, Failed: 0 [PASS]

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.6434         0.8124         7.2266
v1 shared               2.0260         1.0600         9.4289
v2 register             1.0357         2.0735        18.4447
v3 register             0.5445         3.9442        35.0856
v4 half2                0.5563         3.8604        34.3396
v5 cp.async             0.5597         3.8367        34.1292
v5.1 double             0.5944         3.6127        32.1361
v5.2 bounds             0.5487         3.9137        34.8138
v6 WMMA                 0.3741         5.7401        51.0606
v6.1 pad                0.3060         7.0174        62.4226
v6.2 vector             0.1392        15.4316       137.2700
v6.3 reuse              0.1696        12.6601       112.6170
cuBLAS                  0.1910        11.2418       100.0000

v2 / v1 Speedup: 1.9562x
v3 / v2 Speedup: 1.9022x
v3 / v0 Speedup: 4.8551x
v4 / v3 Speedup: 0.9787x
v5 / v4 Speedup: 0.9939x
v5.1 / v5.0 Speedup: 0.9416x
v5.2 / v5.1 Speedup: 1.0833x
````

## raw/v63_final_test_large.log

SHA256：`f49f6b370cb78a03451a8778e845824d7da2835b6e98a40cd3d6da226a9ec0e3`

````text
v6.3,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.3,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.3,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.3,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.3,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v63_final_test_small.log

SHA256：`2d740a7269ff722126c78b2b4cfa381249a89ec8bfee1861d6d742b9a8e6482a`

````text
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
````

## raw/v63_final_timing_0.csv

SHA256：`fedea5e845cba1fd0d8539feba2da9b7b17a339da2936663ae1a6c8596d7d02b`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.025385,10.5746
0,v6.3,512,512,512,10,200,0.0303258,8.85173
0,cuBLAS,512,512,512,10,200,0.0271411,9.89036
1,v6.3,512,512,512,10,200,0.029527,9.09117
1,cuBLAS,512,512,512,10,200,0.0352102,7.62379
1,v6.2,512,512,512,10,200,0.0270899,9.90905
2,cuBLAS,512,512,512,10,200,0.025769,10.417
2,v6.2,512,512,512,10,200,0.026281,10.2141
2,v6.3,512,512,512,10,200,0.0290765,9.23205
3,v6.2,512,512,512,10,200,0.0268288,10.0055
3,v6.3,512,512,512,10,200,0.0294861,9.1038
3,cuBLAS,512,512,512,10,200,0.0255437,10.5089
4,v6.3,512,512,512,10,200,0.0302182,8.88323
4,cuBLAS,512,512,512,10,200,0.0262042,10.244
4,v6.2,512,512,512,10,200,0.0257997,10.4046
5,cuBLAS,512,512,512,10,200,0.0278374,9.64296
5,v6.2,512,512,512,10,200,0.0264141,10.1626
5,v6.3,512,512,512,10,200,0.0293376,9.14988
6,v6.2,512,512,512,10,200,0.0252365,10.6368
6,v6.3,512,512,512,10,200,0.0307968,8.71634
6,cuBLAS,512,512,512,10,200,0.0267776,10.0246
7,v6.3,512,512,512,10,200,0.0298086,9.00529
7,cuBLAS,512,512,512,10,200,0.0254566,10.5448
7,v6.2,512,512,512,10,200,0.0251546,10.6714
8,cuBLAS,512,512,512,10,200,0.0262707,10.218
8,v6.2,512,512,512,10,200,0.0270746,9.91467
8,v6.3,512,512,512,10,200,0.0303104,8.85622
9,v6.2,512,512,512,10,200,0.0290406,9.24344
9,v6.3,512,512,512,10,200,0.0300646,8.92861
9,cuBLAS,512,512,512,10,200,0.0261018,10.2842
10,v6.3,512,512,512,10,200,0.0297984,9.00838
10,cuBLAS,512,512,512,10,200,0.0264806,10.137
10,v6.2,512,512,512,10,200,0.0267213,10.0458
11,cuBLAS,512,512,512,10,200,0.027049,9.92406
11,v6.2,512,512,512,10,200,0.029225,9.18514
11,v6.3,512,512,512,10,200,0.0289946,9.25813
0,v6.2,1024,1024,1024,10,200,0.147732,14.5363
0,v6.3,1024,1024,1024,10,200,0.162294,13.2321
0,cuBLAS,1024,1024,1024,10,200,0.162662,13.2021
1,v6.3,1024,1024,1024,10,200,0.17024,12.6144
1,cuBLAS,1024,1024,1024,10,200,0.163277,13.1524
1,v6.2,1024,1024,1024,10,200,0.140851,15.2465
2,cuBLAS,1024,1024,1024,10,200,0.161756,13.2761
2,v6.2,1024,1024,1024,10,200,0.140247,15.3121
2,v6.3,1024,1024,1024,10,200,0.159206,13.4887
3,v6.2,1024,1024,1024,10,200,0.14486,14.8245
3,v6.3,1024,1024,1024,10,200,0.162391,13.2242
3,cuBLAS,1024,1024,1024,10,200,0.162678,13.2008
4,v6.3,1024,1024,1024,10,200,0.169585,12.6632
4,cuBLAS,1024,1024,1024,10,200,0.161336,13.3106
4,v6.2,1024,1024,1024,10,200,0.156841,13.6921
5,cuBLAS,1024,1024,1024,10,200,0.162284,13.2329
5,v6.2,1024,1024,1024,10,200,0.153692,13.9726
5,v6.3,1024,1024,1024,10,200,0.159944,13.4265
6,v6.2,1024,1024,1024,10,200,0.14293,15.0247
6,v6.3,1024,1024,1024,10,200,0.162263,13.2346
6,cuBLAS,1024,1024,1024,10,200,0.161516,13.2958
7,v6.3,1024,1024,1024,10,200,0.160932,13.3441
7,cuBLAS,1024,1024,1024,10,200,0.154045,13.9406
7,v6.2,1024,1024,1024,10,200,0.144645,14.8466
8,cuBLAS,1024,1024,1024,10,200,0.158157,13.5782
8,v6.2,1024,1024,1024,10,200,0.143427,14.9727
8,v6.3,1024,1024,1024,10,200,0.154424,13.9064
9,v6.2,1024,1024,1024,10,200,0.134487,15.968
9,v6.3,1024,1024,1024,10,200,0.155428,13.8166
9,cuBLAS,1024,1024,1024,10,200,0.15466,13.8852
10,v6.3,1024,1024,1024,10,200,0.161526,13.295
10,cuBLAS,1024,1024,1024,10,200,0.154496,13.8999
10,v6.2,1024,1024,1024,10,200,0.1442,14.8924
11,cuBLAS,1024,1024,1024,10,200,0.15765,13.6219
11,v6.2,1024,1024,1024,10,200,0.137646,15.6015
11,v6.3,1024,1024,1024,10,200,0.155822,13.7816
0,v6.2,2048,2048,2048,10,25,0.974315,17.6328
0,v6.3,2048,2048,2048,10,25,0.921027,18.653
0,cuBLAS,2048,2048,2048,10,25,0.758866,22.6389
1,v6.3,2048,2048,2048,10,25,0.966574,17.774
1,cuBLAS,2048,2048,2048,10,25,0.86102,19.9529
1,v6.2,2048,2048,2048,10,25,1.1264,15.252
2,cuBLAS,2048,2048,2048,10,25,0.836116,20.5472
2,v6.2,2048,2048,2048,10,25,1.18944,14.4437
2,v6.3,2048,2048,2048,10,25,1.06578,16.1195
3,v6.2,2048,2048,2048,10,25,1.11452,15.4146
3,v6.3,2048,2048,2048,10,25,1.07565,15.9716
3,cuBLAS,2048,2048,2048,10,25,0.828334,20.7403
4,v6.3,2048,2048,2048,10,25,1.05714,16.2513
4,cuBLAS,2048,2048,2048,10,25,0.870359,19.7388
4,v6.2,2048,2048,2048,10,25,1.10768,15.5098
5,cuBLAS,2048,2048,2048,10,25,0.867287,19.8087
5,v6.2,2048,2048,2048,10,25,1.06729,16.0966
5,v6.3,2048,2048,2048,10,25,0.869949,19.7481
6,v6.2,2048,2048,2048,10,25,0.94421,18.195
6,v6.3,2048,2048,2048,10,25,0.894935,19.1968
6,cuBLAS,2048,2048,2048,10,25,0.727613,23.6113
7,v6.3,2048,2048,2048,10,25,0.835953,20.5512
7,cuBLAS,2048,2048,2048,10,25,0.721469,23.8123
7,v6.2,2048,2048,2048,10,25,0.963707,17.8269
8,cuBLAS,2048,2048,2048,10,25,0.722534,23.7772
8,v6.2,2048,2048,2048,10,25,0.897229,19.1477
8,v6.3,2048,2048,2048,10,25,0.88023,19.5175
9,v6.2,2048,2048,2048,10,25,1.09064,15.7521
9,v6.3,2048,2048,2048,10,25,1.02998,16.6798
9,cuBLAS,2048,2048,2048,10,25,0.822272,20.8932
10,v6.3,2048,2048,2048,10,25,1.01175,16.9803
10,cuBLAS,2048,2048,2048,10,25,0.767181,22.3935
10,v6.2,2048,2048,2048,10,25,0.859259,19.9938
11,cuBLAS,2048,2048,2048,10,25,0.684483,25.0991
11,v6.2,2048,2048,2048,10,25,0.895468,19.1854
11,v6.3,2048,2048,2048,10,25,0.854835,20.0973
0,v6.2,4096,4096,4096,10,10,8.51671,16.1376
0,v6.3,4096,4096,4096,10,10,7.53859,18.2314
0,cuBLAS,4096,4096,4096,10,10,5.10853,26.9038
1,v6.3,4096,4096,4096,10,10,7.01542,19.591
1,cuBLAS,4096,4096,4096,10,10,5.06337,27.1438
1,v6.2,4096,4096,4096,10,10,7.88879,17.422
2,cuBLAS,4096,4096,4096,10,10,5.05385,27.1949
2,v6.2,4096,4096,4096,10,10,8.0127,17.1526
2,v6.3,4096,4096,4096,10,10,7.44315,18.4652
3,v6.2,4096,4096,4096,10,10,8.56299,16.0503
3,v6.3,4096,4096,4096,10,10,7.67386,17.91
3,cuBLAS,4096,4096,4096,10,10,5.38327,25.5308
4,v6.3,4096,4096,4096,10,10,7.35857,18.6774
4,cuBLAS,4096,4096,4096,10,10,5.22025,26.328
4,v6.2,4096,4096,4096,10,10,8.12401,16.9176
5,cuBLAS,4096,4096,4096,10,10,5.14212,26.7281
5,v6.2,4096,4096,4096,10,10,8.0599,17.0522
5,v6.3,4096,4096,4096,10,10,6.93494,19.8183
6,v6.2,4096,4096,4096,10,10,8.13896,16.8866
6,v6.3,4096,4096,4096,10,10,6.94006,19.8037
6,cuBLAS,4096,4096,4096,10,10,5.07658,27.0731
7,v6.3,4096,4096,4096,10,10,6.9591,19.7495
7,cuBLAS,4096,4096,4096,10,10,5.02692,27.3406
7,v6.2,4096,4096,4096,10,10,7.93579,17.3189
8,cuBLAS,4096,4096,4096,10,10,5.03142,27.3161
8,v6.2,4096,4096,4096,10,10,7.9913,17.1986
8,v6.3,4096,4096,4096,10,10,6.89213,19.9414
9,v6.2,4096,4096,4096,10,10,7.92412,17.3444
9,v6.3,4096,4096,4096,10,10,7.12909,19.2786
9,cuBLAS,4096,4096,4096,10,10,5.07351,27.0895
10,v6.3,4096,4096,4096,10,10,6.93453,19.8195
10,cuBLAS,4096,4096,4096,10,10,5.10239,26.9362
10,v6.2,4096,4096,4096,10,10,7.93764,17.3148
11,cuBLAS,4096,4096,4096,10,10,5.06808,27.1185
11,v6.2,4096,4096,4096,10,10,7.88746,17.425
11,v6.3,4096,4096,4096,10,10,6.85425,20.0516
0,v6.2,512,2048,1024,10,200,0.139581,15.3852
0,v6.3,512,2048,1024,10,200,0.158746,13.5278
0,cuBLAS,512,2048,1024,10,200,0.102784,20.8932
1,v6.3,512,2048,1024,10,200,0.161623,13.287
1,cuBLAS,512,2048,1024,10,200,0.103491,20.7505
1,v6.2,512,2048,1024,10,200,0.14486,14.8245
2,cuBLAS,512,2048,1024,10,200,0.101949,21.0642
2,v6.2,512,2048,1024,10,200,0.145833,14.7256
2,v6.3,512,2048,1024,10,200,0.164019,13.0929
3,v6.2,512,2048,1024,10,200,0.14167,15.1583
3,v6.3,512,2048,1024,10,200,0.160927,13.3445
3,cuBLAS,512,2048,1024,10,200,0.101263,21.2069
4,v6.3,512,2048,1024,10,200,0.165304,12.9911
4,cuBLAS,512,2048,1024,10,200,0.111703,19.2249
4,v6.2,512,2048,1024,10,200,0.148869,14.4253
5,cuBLAS,512,2048,1024,10,200,0.108611,19.7723
5,v6.2,512,2048,1024,10,200,0.158013,13.5905
5,v6.3,512,2048,1024,10,200,0.178632,12.0219
6,v6.2,512,2048,1024,10,200,0.15979,13.4394
6,v6.3,512,2048,1024,10,200,0.16894,12.7116
6,cuBLAS,512,2048,1024,10,200,0.109553,19.6023
7,v6.3,512,2048,1024,10,200,0.169088,12.7004
7,cuBLAS,512,2048,1024,10,200,0.108273,19.834
7,v6.2,512,2048,1024,10,200,0.148649,14.4467
8,cuBLAS,512,2048,1024,10,200,0.108109,19.8641
8,v6.2,512,2048,1024,10,200,0.146632,14.6454
8,v6.3,512,2048,1024,10,200,0.171028,12.5563
9,v6.2,512,2048,1024,10,200,0.149069,14.406
9,v6.3,512,2048,1024,10,200,0.166774,12.8766
9,cuBLAS,512,2048,1024,10,200,0.110019,19.5193
10,v6.3,512,2048,1024,10,200,0.174387,12.3145
10,cuBLAS,512,2048,1024,10,200,0.104632,20.5241
10,v6.2,512,2048,1024,10,200,0.145592,14.75
11,cuBLAS,512,2048,1024,10,200,0.109158,19.6731
11,v6.2,512,2048,1024,10,200,0.144082,14.9046
11,v6.3,512,2048,1024,10,200,0.162944,13.1793
0,v6.2,2048,512,1024,10,200,0.131195,16.3687
0,v6.3,2048,512,1024,10,200,0.149514,14.3631
0,cuBLAS,2048,512,1024,10,200,0.104351,20.5795
1,v6.3,2048,512,1024,10,200,0.147195,14.5894
1,cuBLAS,2048,512,1024,10,200,0.105011,20.45
1,v6.2,2048,512,1024,10,200,0.132731,16.1792
2,cuBLAS,2048,512,1024,10,200,0.102057,21.042
2,v6.2,2048,512,1024,10,200,0.132777,16.1736
2,v6.3,2048,512,1024,10,200,0.147917,14.5182
3,v6.2,2048,512,1024,10,200,0.133821,16.0474
3,v6.3,2048,512,1024,10,200,0.14956,14.3586
3,cuBLAS,2048,512,1024,10,200,0.10773,19.934
4,v6.3,2048,512,1024,10,200,0.150272,14.2906
4,cuBLAS,2048,512,1024,10,200,0.105252,20.4033
4,v6.2,2048,512,1024,10,200,0.134508,15.9655
5,cuBLAS,2048,512,1024,10,200,0.106225,20.2164
5,v6.2,2048,512,1024,10,200,0.132941,16.1537
5,v6.3,2048,512,1024,10,200,0.149043,14.4085
6,v6.2,2048,512,1024,10,200,0.131031,16.3891
6,v6.3,2048,512,1024,10,200,0.148547,14.4566
6,cuBLAS,2048,512,1024,10,200,0.105523,20.3508
7,v6.3,2048,512,1024,10,200,0.150277,14.2902
7,cuBLAS,2048,512,1024,10,200,0.102927,20.8641
7,v6.2,2048,512,1024,10,200,0.129239,16.6164
8,cuBLAS,2048,512,1024,10,200,0.104504,20.5492
8,v6.2,2048,512,1024,10,200,0.130775,16.4212
8,v6.3,2048,512,1024,10,200,0.148623,14.4492
9,v6.2,2048,512,1024,10,200,0.133591,16.0751
9,v6.3,2048,512,1024,10,200,0.147866,14.5232
9,cuBLAS,2048,512,1024,10,200,0.109757,19.5657
10,v6.3,2048,512,1024,10,200,0.147251,14.5838
10,cuBLAS,2048,512,1024,10,200,0.105851,20.2878
10,v6.2,2048,512,1024,10,200,0.130212,16.4922
11,cuBLAS,2048,512,1024,10,200,0.104049,20.6392
11,v6.2,2048,512,1024,10,200,0.133238,16.1177
11,v6.3,2048,512,1024,10,200,0.14741,14.5681
0,v6.2,1024,1024,64,10,200,0.019415,6.91308
0,v6.3,1024,1024,64,10,200,0.022743,5.90149
0,cuBLAS,1024,1024,64,10,200,0.0155187,8.64876
1,v6.3,1024,1024,64,10,200,0.0198707,6.75455
1,cuBLAS,1024,1024,64,10,200,0.0185395,7.23955
1,v6.2,1024,1024,64,10,200,0.0191744,6.99984
2,cuBLAS,1024,1024,64,10,200,0.0151808,8.84128
2,v6.2,1024,1024,64,10,200,0.0190464,7.04688
2,v6.3,1024,1024,64,10,200,0.0208486,6.43772
3,v6.2,1024,1024,64,10,200,0.0199014,6.74412
3,v6.3,1024,1024,64,10,200,0.0193485,6.93686
3,cuBLAS,1024,1024,64,10,200,0.0150528,8.91646
4,v6.3,1024,1024,64,10,200,0.0219187,6.12343
4,cuBLAS,1024,1024,64,10,200,0.0156621,8.5696
4,v6.2,1024,1024,64,10,200,0.0197018,6.81247
5,cuBLAS,1024,1024,64,10,200,0.0433254,3.0979
5,v6.2,1024,1024,64,10,200,0.032128,4.17759
5,v6.3,1024,1024,64,10,200,0.0359731,3.73106
6,v6.2,1024,1024,64,10,200,0.0334694,4.01016
6,v6.3,1024,1024,64,10,200,0.0350822,3.8258
6,cuBLAS,1024,1024,64,10,200,0.0167578,8.00929
7,v6.3,1024,1024,64,10,200,0.0200448,6.69589
7,cuBLAS,1024,1024,64,10,200,0.0153805,8.7265
7,v6.2,1024,1024,64,10,200,0.0222874,6.02215
8,cuBLAS,1024,1024,64,10,200,0.0167629,8.00684
8,v6.2,1024,1024,64,10,200,0.0203827,6.58488
8,v6.3,1024,1024,64,10,200,0.020265,6.62314
9,v6.2,1024,1024,64,10,200,0.0190106,7.06017
9,v6.3,1024,1024,64,10,200,0.020224,6.63656
9,cuBLAS,1024,1024,64,10,200,0.0245094,5.47616
10,v6.3,1024,1024,64,10,200,0.0204902,6.55032
10,cuBLAS,1024,1024,64,10,200,0.0145306,9.23693
10,v6.2,1024,1024,64,10,200,0.0215091,6.24004
11,cuBLAS,1024,1024,64,10,200,0.0156416,8.58082
11,v6.2,1024,1024,64,10,200,0.0198707,6.75455
11,v6.3,1024,1024,64,10,200,0.0197274,6.80363
0,v6.2,1023,1025,1007,10,200,0.206397,10.2319
0,v6.3,1023,1025,1007,10,200,0.217073,9.72868
0,cuBLAS,1023,1025,1007,10,200,0.167455,12.6113
1,v6.3,1023,1025,1007,10,200,0.215137,9.8162
1,cuBLAS,1023,1025,1007,10,200,0.165837,12.7344
1,v6.2,1023,1025,1007,10,200,0.206331,10.2352
2,cuBLAS,1023,1025,1007,10,200,0.169539,12.4563
2,v6.2,1023,1025,1007,10,200,0.208712,10.1184
2,v6.3,1023,1025,1007,10,200,0.217088,9.72799
3,v6.2,1023,1025,1007,10,200,0.208374,10.1348
3,v6.3,1023,1025,1007,10,200,0.217651,9.70282
3,cuBLAS,1023,1025,1007,10,200,0.165775,12.7391
4,v6.3,1023,1025,1007,10,200,0.211912,9.96561
4,cuBLAS,1023,1025,1007,10,200,0.170414,12.3923
4,v6.2,1023,1025,1007,10,200,0.208527,10.1274
5,cuBLAS,1023,1025,1007,10,200,0.168765,12.5134
5,v6.2,1023,1025,1007,10,200,0.207206,10.1919
5,v6.3,1023,1025,1007,10,200,0.228116,9.25768
6,v6.2,1023,1025,1007,10,200,0.211446,9.98757
6,v6.3,1023,1025,1007,10,200,0.218808,9.65151
6,cuBLAS,1023,1025,1007,10,200,0.169446,12.4631
7,v6.3,1023,1025,1007,10,200,0.211727,9.97429
7,cuBLAS,1023,1025,1007,10,200,0.169098,12.4888
7,v6.2,1023,1025,1007,10,200,0.208865,10.111
8,cuBLAS,1023,1025,1007,10,200,0.183588,11.5031
8,v6.2,1023,1025,1007,10,200,0.2191,9.63865
8,v6.3,1023,1025,1007,10,200,0.227302,9.29084
9,v6.2,1023,1025,1007,10,200,0.221768,9.52271
9,v6.3,1023,1025,1007,10,200,0.233124,9.05883
9,cuBLAS,1023,1025,1007,10,200,0.173312,12.1851
10,v6.3,1023,1025,1007,10,200,0.226253,9.33394
10,cuBLAS,1023,1025,1007,10,200,0.176548,11.9618
10,v6.2,1023,1025,1007,10,200,0.218112,9.68232
11,cuBLAS,1023,1025,1007,10,200,0.175201,12.0537
11,v6.2,1023,1025,1007,10,200,0.218107,9.68255
11,v6.3,1023,1025,1007,10,200,0.22462,9.40181
````

## raw/v63_final_timing_0_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_final_timing_1.csv

SHA256：`02bd31566907c3025bb2afbf1adf8b4d0d698794b0c9ed924cfed0c2b534622d`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.0273971,9.79794
0,v6.3,512,512,512,10,200,0.0302387,8.87721
0,cuBLAS,512,512,512,10,200,0.0259174,10.3573
1,v6.3,512,512,512,10,200,0.0334438,8.02645
1,cuBLAS,512,512,512,10,200,0.0312371,8.59348
1,v6.2,512,512,512,10,200,0.0266752,10.0631
2,cuBLAS,512,512,512,10,200,0.0330342,8.12598
2,v6.2,512,512,512,10,200,0.0259123,10.3594
2,v6.3,512,512,512,10,200,0.0321843,8.34057
3,v6.2,512,512,512,10,200,0.0264192,10.1606
3,v6.3,512,512,512,10,200,0.0300851,8.92253
3,cuBLAS,512,512,512,10,200,0.0322458,8.32467
4,v6.3,512,512,512,10,200,0.0306125,8.76882
4,cuBLAS,512,512,512,10,200,0.0258253,10.3943
4,v6.2,512,512,512,10,200,0.0277094,9.68751
5,cuBLAS,512,512,512,10,200,0.0258509,10.384
5,v6.2,512,512,512,10,200,0.0240691,11.1527
5,v6.3,512,512,512,10,200,0.0301005,8.91798
6,v6.2,512,512,512,10,200,0.027008,9.93911
6,v6.3,512,512,512,10,200,0.0301107,8.91495
6,cuBLAS,512,512,512,10,200,0.0271411,9.89036
7,v6.3,512,512,512,10,200,0.0301773,8.89528
7,cuBLAS,512,512,512,10,200,0.0255334,10.5131
7,v6.2,512,512,512,10,200,0.027305,9.83101
8,cuBLAS,512,512,512,10,200,0.0271565,9.88477
8,v6.2,512,512,512,10,200,0.0315034,8.52085
8,v6.3,512,512,512,10,200,0.0314214,8.54307
9,v6.2,512,512,512,10,200,0.0304026,8.82937
9,v6.3,512,512,512,10,200,0.0304998,8.80121
9,cuBLAS,512,512,512,10,200,0.0287232,9.3456
10,v6.3,512,512,512,10,200,0.0308275,8.70766
10,cuBLAS,512,512,512,10,200,0.0269414,9.96366
10,v6.2,512,512,512,10,200,0.0299264,8.96985
11,cuBLAS,512,512,512,10,200,0.02624,10.23
11,v6.2,512,512,512,10,200,0.0252826,10.6174
11,v6.3,512,512,512,10,200,0.0301517,8.90284
0,v6.2,1024,1024,1024,10,200,0.140856,15.2459
0,v6.3,1024,1024,1024,10,200,0.159852,13.4342
0,cuBLAS,1024,1024,1024,10,200,0.161367,13.3081
1,v6.3,1024,1024,1024,10,200,0.163707,13.1179
1,cuBLAS,1024,1024,1024,10,200,0.164255,13.0741
1,v6.2,1024,1024,1024,10,200,0.141681,15.1572
2,cuBLAS,1024,1024,1024,10,200,0.166011,12.9358
2,v6.2,1024,1024,1024,10,200,0.134799,15.931
2,v6.3,1024,1024,1024,10,200,0.1536,13.981
3,v6.2,1024,1024,1024,10,200,0.134502,15.9661
3,v6.3,1024,1024,1024,10,200,0.163779,13.1121
3,cuBLAS,1024,1024,1024,10,200,0.179671,11.9523
4,v6.3,1024,1024,1024,10,200,0.179164,11.9861
4,cuBLAS,1024,1024,1024,10,200,0.177188,12.1198
4,v6.2,1024,1024,1024,10,200,0.165934,12.9418
5,cuBLAS,1024,1024,1024,10,200,0.175652,12.2258
5,v6.2,1024,1024,1024,10,200,0.156063,13.7604
5,v6.3,1024,1024,1024,10,200,0.174725,12.2906
6,v6.2,1024,1024,1024,10,200,0.158551,13.5444
6,v6.3,1024,1024,1024,10,200,0.185431,11.581
6,cuBLAS,1024,1024,1024,10,200,0.182456,11.7699
7,v6.3,1024,1024,1024,10,200,0.191119,11.2363
7,cuBLAS,1024,1024,1024,10,200,0.179108,11.9899
7,v6.2,1024,1024,1024,10,200,0.143242,14.992
8,cuBLAS,1024,1024,1024,10,200,0.15849,13.5497
8,v6.2,1024,1024,1024,10,200,0.133714,16.0603
8,v6.3,1024,1024,1024,10,200,0.153733,13.9689
9,v6.2,1024,1024,1024,10,200,0.135747,15.8198
9,v6.3,1024,1024,1024,10,200,0.152924,14.0428
9,cuBLAS,1024,1024,1024,10,200,0.156431,13.728
10,v6.3,1024,1024,1024,10,200,0.165125,13.0052
10,cuBLAS,1024,1024,1024,10,200,0.156032,13.7631
10,v6.2,1024,1024,1024,10,200,0.133709,16.0609
11,cuBLAS,1024,1024,1024,10,200,0.174147,12.3315
11,v6.2,1024,1024,1024,10,200,0.161065,13.333
11,v6.3,1024,1024,1024,10,200,0.181699,11.8189
0,v6.2,2048,2048,2048,10,25,1.05939,16.2168
0,v6.3,2048,2048,2048,10,25,0.967107,17.7642
0,cuBLAS,2048,2048,2048,10,25,0.764396,22.4751
1,v6.3,2048,2048,2048,10,25,0.991846,17.3211
1,cuBLAS,2048,2048,2048,10,25,0.824156,20.8454
1,v6.2,2048,2048,2048,10,25,1.06562,16.122
2,cuBLAS,2048,2048,2048,10,25,0.786227,21.851
2,v6.2,2048,2048,2048,10,25,1.05173,16.3349
2,v6.3,2048,2048,2048,10,25,0.99713,17.2293
3,v6.2,2048,2048,2048,10,25,1.08716,15.8025
3,v6.3,2048,2048,2048,10,25,0.833045,20.623
3,cuBLAS,2048,2048,2048,10,25,0.710451,24.1816
4,v6.3,2048,2048,2048,10,25,0.862536,19.9179
4,cuBLAS,2048,2048,2048,10,25,0.735437,23.3601
4,v6.2,2048,2048,2048,10,25,0.927253,18.5277
5,cuBLAS,2048,2048,2048,10,25,0.750223,22.8997
5,v6.2,2048,2048,2048,10,25,0.961167,17.874
5,v6.3,2048,2048,2048,10,25,0.949207,18.0992
6,v6.2,2048,2048,2048,10,25,0.933888,18.3961
6,v6.3,2048,2048,2048,10,25,0.92332,18.6066
6,cuBLAS,2048,2048,2048,10,25,0.881664,19.4857
7,v6.3,2048,2048,2048,10,25,1.11968,15.3435
7,cuBLAS,2048,2048,2048,10,25,0.857252,20.0406
7,v6.2,2048,2048,2048,10,25,1.14856,14.9578
8,cuBLAS,2048,2048,2048,10,25,0.899318,19.1032
8,v6.2,2048,2048,2048,10,25,1.13988,15.0717
8,v6.3,2048,2048,2048,10,25,0.992338,17.3125
9,v6.2,2048,2048,2048,10,25,1.02691,16.7297
9,v6.3,2048,2048,2048,10,25,0.979149,17.5457
9,cuBLAS,2048,2048,2048,10,25,0.803963,21.369
10,v6.3,2048,2048,2048,10,25,1.00708,17.059
10,cuBLAS,2048,2048,2048,10,25,0.840827,20.4321
10,v6.2,2048,2048,2048,10,25,0.963174,17.8367
11,cuBLAS,2048,2048,2048,10,25,0.748134,22.9636
11,v6.2,2048,2048,2048,10,25,0.971571,17.6826
11,v6.3,2048,2048,2048,10,25,0.994918,17.2676
0,v6.2,4096,4096,4096,10,10,7.9915,17.1981
0,v6.3,4096,4096,4096,10,10,7.19084,19.1131
0,cuBLAS,4096,4096,4096,10,10,5.17612,26.5525
1,v6.3,4096,4096,4096,10,10,6.87309,19.9967
1,cuBLAS,4096,4096,4096,10,10,5.11171,26.8871
1,v6.2,4096,4096,4096,10,10,8.00451,17.1702
2,cuBLAS,4096,4096,4096,10,10,5.14365,26.7201
2,v6.2,4096,4096,4096,10,10,7.96785,17.2492
2,v6.3,4096,4096,4096,10,10,6.93985,19.8043
3,v6.2,4096,4096,4096,10,10,8.07711,17.0159
3,v6.3,4096,4096,4096,10,10,6.96453,19.7341
3,cuBLAS,4096,4096,4096,10,10,5.40436,25.4311
4,v6.3,4096,4096,4096,10,10,7.28822,18.8577
4,cuBLAS,4096,4096,4096,10,10,5.41317,25.3897
4,v6.2,4096,4096,4096,10,10,8.42834,16.3068
5,cuBLAS,4096,4096,4096,10,10,5.21093,26.3751
5,v6.2,4096,4096,4096,10,10,8.1194,16.9272
5,v6.3,4096,4096,4096,10,10,7.05239,19.4883
6,v6.2,4096,4096,4096,10,10,8.26399,16.6311
6,v6.3,4096,4096,4096,10,10,7.61334,18.0524
6,cuBLAS,4096,4096,4096,10,10,5.32163,25.8265
7,v6.3,4096,4096,4096,10,10,7.08393,19.4015
7,cuBLAS,4096,4096,4096,10,10,5.12338,26.8258
7,v6.2,4096,4096,4096,10,10,7.96283,17.2601
8,cuBLAS,4096,4096,4096,10,10,5.10044,26.9465
8,v6.2,4096,4096,4096,10,10,7.92125,17.3507
8,v6.3,4096,4096,4096,10,10,6.91087,19.8873
9,v6.2,4096,4096,4096,10,10,8.05448,17.0637
9,v6.3,4096,4096,4096,10,10,7.28433,18.8678
9,cuBLAS,4096,4096,4096,10,10,5.0603,27.1602
10,v6.3,4096,4096,4096,10,10,7.0058,19.6179
10,cuBLAS,4096,4096,4096,10,10,5.08436,27.0317
10,v6.2,4096,4096,4096,10,10,7.90467,17.3871
11,cuBLAS,4096,4096,4096,10,10,5.09737,26.9627
11,v6.2,4096,4096,4096,10,10,8.0041,17.1711
11,v6.3,4096,4096,4096,10,10,6.96556,19.7312
0,v6.2,512,2048,1024,10,200,0.144312,14.8808
0,v6.3,512,2048,1024,10,200,0.159928,13.4278
0,cuBLAS,512,2048,1024,10,200,0.10498,20.456
1,v6.3,512,2048,1024,10,200,0.161684,13.2819
1,cuBLAS,512,2048,1024,10,200,0.105175,20.4182
1,v6.2,512,2048,1024,10,200,0.143939,14.9194
2,cuBLAS,512,2048,1024,10,200,0.103465,20.7557
2,v6.2,512,2048,1024,10,200,0.144292,14.8829
2,v6.3,512,2048,1024,10,200,0.159432,13.4696
3,v6.2,512,2048,1024,10,200,0.142305,15.0907
3,v6.3,512,2048,1024,10,200,0.159672,13.4493
3,cuBLAS,512,2048,1024,10,200,0.104156,20.6179
4,v6.3,512,2048,1024,10,200,0.161193,13.3224
4,cuBLAS,512,2048,1024,10,200,0.113198,18.971
4,v6.2,512,2048,1024,10,200,0.142484,15.0717
5,cuBLAS,512,2048,1024,10,200,0.101407,21.1769
5,v6.2,512,2048,1024,10,200,0.145761,14.7329
5,v6.3,512,2048,1024,10,200,0.157338,13.6489
6,v6.2,512,2048,1024,10,200,0.141527,15.1737
6,v6.3,512,2048,1024,10,200,0.156252,13.7437
6,cuBLAS,512,2048,1024,10,200,0.104417,20.5664
7,v6.3,512,2048,1024,10,200,0.157266,13.6551
7,cuBLAS,512,2048,1024,10,200,0.103414,20.7659
7,v6.2,512,2048,1024,10,200,0.146468,14.6618
8,cuBLAS,512,2048,1024,10,200,0.105457,20.3637
8,v6.2,512,2048,1024,10,200,0.143186,14.9979
8,v6.3,512,2048,1024,10,200,0.161644,13.2853
9,v6.2,512,2048,1024,10,200,0.15168,14.158
9,v6.3,512,2048,1024,10,200,0.166446,12.902
9,cuBLAS,512,2048,1024,10,200,0.108892,19.7212
10,v6.3,512,2048,1024,10,200,0.168786,12.7231
10,cuBLAS,512,2048,1024,10,200,0.110828,19.3768
10,v6.2,512,2048,1024,10,200,0.157338,13.6489
11,cuBLAS,512,2048,1024,10,200,0.110321,19.4658
11,v6.2,512,2048,1024,10,200,0.152407,14.0904
11,v6.3,512,2048,1024,10,200,0.169062,12.7023
0,v6.2,2048,512,1024,10,200,0.139331,15.4129
0,v6.3,2048,512,1024,10,200,0.152648,14.0682
0,cuBLAS,2048,512,1024,10,200,0.106281,20.2057
1,v6.3,2048,512,1024,10,200,0.151214,14.2016
1,cuBLAS,2048,512,1024,10,200,0.106813,20.105
1,v6.2,2048,512,1024,10,200,0.138911,15.4595
2,cuBLAS,2048,512,1024,10,200,0.107146,20.0425
2,v6.2,2048,512,1024,10,200,0.139238,15.4231
2,v6.3,2048,512,1024,10,200,0.1553,13.828
3,v6.2,2048,512,1024,10,200,0.137426,15.6265
3,v6.3,2048,512,1024,10,200,0.156846,13.6917
3,cuBLAS,2048,512,1024,10,200,0.107592,19.9596
4,v6.3,2048,512,1024,10,200,0.157348,13.648
4,cuBLAS,2048,512,1024,10,200,0.106931,20.0829
4,v6.2,2048,512,1024,10,200,0.134231,15.9984
5,cuBLAS,2048,512,1024,10,200,0.104581,20.5341
5,v6.2,2048,512,1024,10,200,0.13804,15.5569
5,v6.3,2048,512,1024,10,200,0.151475,14.1771
6,v6.2,2048,512,1024,10,200,0.139361,15.4095
6,v6.3,2048,512,1024,10,200,0.151168,14.2059
6,cuBLAS,2048,512,1024,10,200,0.105626,20.3311
7,v6.3,2048,512,1024,10,200,0.151112,14.2112
7,cuBLAS,2048,512,1024,10,200,0.105559,20.3439
7,v6.2,2048,512,1024,10,200,0.134036,16.0216
8,cuBLAS,2048,512,1024,10,200,0.105405,20.3736
8,v6.2,2048,512,1024,10,200,0.132859,16.1636
8,v6.3,2048,512,1024,10,200,0.1517,14.1561
9,v6.2,2048,512,1024,10,200,0.136233,15.7633
9,v6.3,2048,512,1024,10,200,0.152422,14.089
9,cuBLAS,2048,512,1024,10,200,0.105472,20.3607
10,v6.3,2048,512,1024,10,200,0.156964,13.6814
10,cuBLAS,2048,512,1024,10,200,0.106419,20.1795
10,v6.2,2048,512,1024,10,200,0.143677,14.9466
11,cuBLAS,2048,512,1024,10,200,0.10518,20.4172
11,v6.2,2048,512,1024,10,200,0.13803,15.5581
11,v6.3,2048,512,1024,10,200,0.152786,14.0555
0,v6.2,1024,1024,64,10,200,0.0242125,5.54333
0,v6.3,1024,1024,64,10,200,0.0189286,7.09072
0,cuBLAS,1024,1024,64,10,200,0.0157747,8.50841
1,v6.3,1024,1024,64,10,200,0.0188262,7.12929
1,cuBLAS,1024,1024,64,10,200,0.0158669,8.45899
1,v6.2,1024,1024,64,10,200,0.0180378,7.44093
2,cuBLAS,1024,1024,64,10,200,0.0171213,7.83923
2,v6.2,1024,1024,64,10,200,0.0255744,5.24813
2,v6.3,1024,1024,64,10,200,0.0191232,7.01858
3,v6.2,1024,1024,64,10,200,0.0243968,5.50145
3,v6.3,1024,1024,64,10,200,0.0204186,6.57332
3,cuBLAS,1024,1024,64,10,200,0.0169165,7.93414
4,v6.3,1024,1024,64,10,200,0.0205414,6.534
4,cuBLAS,1024,1024,64,10,200,0.0175718,7.63823
4,v6.2,1024,1024,64,10,200,0.018985,7.06969
5,cuBLAS,1024,1024,64,10,200,0.0167782,7.99951
5,v6.2,1024,1024,64,10,200,0.0200858,6.68223
5,v6.3,1024,1024,64,10,200,0.0186266,7.20572
6,v6.2,1024,1024,64,10,200,0.0253491,5.29477
6,v6.3,1024,1024,64,10,200,0.0197734,6.78778
6,cuBLAS,1024,1024,64,10,200,0.0256563,5.23137
7,v6.3,1024,1024,64,10,200,0.0197325,6.80187
7,cuBLAS,1024,1024,64,10,200,0.0247398,5.42517
7,v6.2,1024,1024,64,10,200,0.0280115,4.79152
8,cuBLAS,1024,1024,64,10,200,0.0262707,5.10902
8,v6.2,1024,1024,64,10,200,0.0184576,7.27168
8,v6.3,1024,1024,64,10,200,0.0270643,4.95921
9,v6.2,1024,1024,64,10,200,0.0274534,4.88892
9,v6.3,1024,1024,64,10,200,0.0253491,5.29477
9,cuBLAS,1024,1024,64,10,200,0.0160768,8.34854
10,v6.3,1024,1024,64,10,200,0.0191232,7.01858
10,cuBLAS,1024,1024,64,10,200,0.0237414,5.65331
10,v6.2,1024,1024,64,10,200,0.0193024,6.95342
11,cuBLAS,1024,1024,64,10,200,0.0231322,5.80221
11,v6.2,1024,1024,64,10,200,0.0222464,6.03323
11,v6.3,1024,1024,64,10,200,0.0285338,4.70382
0,v6.2,1023,1025,1007,10,200,0.210867,10.015
0,v6.3,1023,1025,1007,10,200,0.217825,9.69506
0,cuBLAS,1023,1025,1007,10,200,0.171034,12.3475
1,v6.3,1023,1025,1007,10,200,0.214477,9.84643
1,cuBLAS,1023,1025,1007,10,200,0.169052,12.4922
1,v6.2,1023,1025,1007,10,200,0.209188,10.0954
2,cuBLAS,1023,1025,1007,10,200,0.16766,12.5959
2,v6.2,1023,1025,1007,10,200,0.207473,10.1788
2,v6.3,1023,1025,1007,10,200,0.219412,9.62493
3,v6.2,1023,1025,1007,10,200,0.21676,9.7427
3,v6.3,1023,1025,1007,10,200,0.21804,9.6855
3,cuBLAS,1023,1025,1007,10,200,0.170276,12.4024
4,v6.3,1023,1025,1007,10,200,0.213888,9.87353
4,cuBLAS,1023,1025,1007,10,200,0.171315,12.3272
4,v6.2,1023,1025,1007,10,200,0.222136,9.50691
5,cuBLAS,1023,1025,1007,10,200,0.166943,12.65
5,v6.2,1023,1025,1007,10,200,0.206295,10.2369
5,v6.3,1023,1025,1007,10,200,0.218035,9.68573
6,v6.2,1023,1025,1007,10,200,0.209311,10.0894
6,v6.3,1023,1025,1007,10,200,0.226104,9.34007
6,cuBLAS,1023,1025,1007,10,200,0.172795,12.2216
7,v6.3,1023,1025,1007,10,200,0.214789,9.83211
7,cuBLAS,1023,1025,1007,10,200,0.169257,12.4771
7,v6.2,1023,1025,1007,10,200,0.20695,10.2045
8,cuBLAS,1023,1025,1007,10,200,0.167936,12.5752
8,v6.2,1023,1025,1007,10,200,0.207493,10.1778
8,v6.3,1023,1025,1007,10,200,0.215245,9.81129
9,v6.2,1023,1025,1007,10,200,0.214067,9.86527
9,v6.3,1023,1025,1007,10,200,0.216054,9.77456
9,cuBLAS,1023,1025,1007,10,200,0.169303,12.4737
10,v6.3,1023,1025,1007,10,200,0.2125,9.938
10,cuBLAS,1023,1025,1007,10,200,0.175647,12.0232
10,v6.2,1023,1025,1007,10,200,0.218665,9.65784
11,cuBLAS,1023,1025,1007,10,200,0.18366,11.4986
11,v6.2,1023,1025,1007,10,200,0.220042,9.59738
11,v6.3,1023,1025,1007,10,200,0.223811,9.43579
````

## raw/v63_final_timing_1_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_final_timing_2.csv

SHA256：`bab4aa9a18273ee35719f664b354ba2320b14517099461a6e451a08a4c30037f`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.0314726,8.52917
0,v6.3,512,512,512,10,200,0.032169,8.34455
0,cuBLAS,512,512,512,10,200,0.0292403,9.18032
1,v6.3,512,512,512,10,200,0.0336274,7.98265
1,cuBLAS,512,512,512,10,200,0.0281805,9.52558
1,v6.2,512,512,512,10,200,0.026624,10.0825
2,cuBLAS,512,512,512,10,200,0.0257587,10.4211
2,v6.2,512,512,512,10,200,0.0261478,10.2661
2,v6.3,512,512,512,10,200,0.0325376,8.25001
3,v6.2,512,512,512,10,200,0.0267725,10.0265
3,v6.3,512,512,512,10,200,0.0298035,9.00684
3,cuBLAS,512,512,512,10,200,0.0423538,6.33794
4,v6.3,512,512,512,10,200,0.0347443,7.72602
4,cuBLAS,512,512,512,10,200,0.0444211,6.04297
4,v6.2,512,512,512,10,200,0.0389325,6.8949
5,cuBLAS,512,512,512,10,200,0.0437197,6.13992
5,v6.2,512,512,512,10,200,0.040576,6.61562
5,v6.3,512,512,512,10,200,0.0384666,6.97841
6,v6.2,512,512,512,10,200,0.0259891,10.3288
6,v6.3,512,512,512,10,200,0.029952,8.96219
6,cuBLAS,512,512,512,10,200,0.0325837,8.23834
7,v6.3,512,512,512,10,200,0.0312474,8.59066
7,cuBLAS,512,512,512,10,200,0.0270643,9.91843
7,v6.2,512,512,512,10,200,0.0268134,10.0112
8,cuBLAS,512,512,512,10,200,0.0263526,10.1863
8,v6.2,512,512,512,10,200,0.0272896,9.83655
8,v6.3,512,512,512,10,200,0.0310426,8.64734
9,v6.2,512,512,512,10,200,0.0271718,9.87918
9,v6.3,512,512,512,10,200,0.0316467,8.48225
9,cuBLAS,512,512,512,10,200,0.0273971,9.79794
10,v6.3,512,512,512,10,200,0.030976,8.66592
10,cuBLAS,512,512,512,10,200,0.0313139,8.5724
10,v6.2,512,512,512,10,200,0.0272998,9.83286
11,cuBLAS,512,512,512,10,200,0.0274534,9.77784
11,v6.2,512,512,512,10,200,0.0260045,10.3227
11,v6.3,512,512,512,10,200,0.0308736,8.69466
0,v6.2,1024,1024,1024,10,200,0.133504,16.0855
0,v6.3,1024,1024,1024,10,200,0.155581,13.803
0,cuBLAS,1024,1024,1024,10,200,0.158269,13.5685
1,v6.3,1024,1024,1024,10,200,0.161244,13.3182
1,cuBLAS,1024,1024,1024,10,200,0.159437,13.4692
1,v6.2,1024,1024,1024,10,200,0.135798,15.8138
2,cuBLAS,1024,1024,1024,10,200,0.161562,13.292
2,v6.2,1024,1024,1024,10,200,0.135404,15.8599
2,v6.3,1024,1024,1024,10,200,0.15554,13.8066
3,v6.2,1024,1024,1024,10,200,0.134789,15.9322
3,v6.3,1024,1024,1024,10,200,0.154322,13.9156
3,cuBLAS,1024,1024,1024,10,200,0.158111,13.5822
4,v6.3,1024,1024,1024,10,200,0.156652,13.7087
4,cuBLAS,1024,1024,1024,10,200,0.154573,13.893
4,v6.2,1024,1024,1024,10,200,0.135813,15.812
5,cuBLAS,1024,1024,1024,10,200,0.155484,13.8116
5,v6.2,1024,1024,1024,10,200,0.156995,13.6787
5,v6.3,1024,1024,1024,10,200,0.178842,12.0077
6,v6.2,1024,1024,1024,10,200,0.159959,13.4252
6,v6.3,1024,1024,1024,10,200,0.18218,11.7877
6,cuBLAS,1024,1024,1024,10,200,0.177157,12.1219
7,v6.3,1024,1024,1024,10,200,0.190305,11.2844
7,cuBLAS,1024,1024,1024,10,200,0.180229,11.9153
7,v6.2,1024,1024,1024,10,200,0.175258,12.2533
8,cuBLAS,1024,1024,1024,10,200,0.180475,11.8991
8,v6.2,1024,1024,1024,10,200,0.180183,11.9183
8,v6.3,1024,1024,1024,10,200,0.182492,11.7675
9,v6.2,1024,1024,1024,10,200,0.16062,13.37
9,v6.3,1024,1024,1024,10,200,0.17471,12.2917
9,cuBLAS,1024,1024,1024,10,200,0.155587,13.8025
10,v6.3,1024,1024,1024,10,200,0.163773,13.1125
10,cuBLAS,1024,1024,1024,10,200,0.15785,13.6046
10,v6.2,1024,1024,1024,10,200,0.145777,14.7313
11,cuBLAS,1024,1024,1024,10,200,0.162949,13.1789
11,v6.2,1024,1024,1024,10,200,0.142756,15.0431
11,v6.3,1024,1024,1024,10,200,0.159672,13.4493
0,v6.2,2048,2048,2048,10,25,0.917668,18.7212
0,v6.3,2048,2048,2048,10,25,0.929956,18.4739
0,cuBLAS,2048,2048,2048,10,25,0.830218,20.6932
1,v6.3,2048,2048,2048,10,25,0.997335,17.2258
1,cuBLAS,2048,2048,2048,10,25,0.823869,20.8527
1,v6.2,2048,2048,2048,10,25,1.05591,16.2702
2,cuBLAS,2048,2048,2048,10,25,0.827187,20.769
2,v6.2,2048,2048,2048,10,25,1.03236,16.6414
2,v6.3,2048,2048,2048,10,25,1.02593,16.7457
3,v6.2,2048,2048,2048,10,25,1.07655,15.9582
3,v6.3,2048,2048,2048,10,25,1.03379,16.6183
3,cuBLAS,2048,2048,2048,10,25,0.773284,22.2168
4,v6.3,2048,2048,2048,10,25,1.02154,16.8176
4,cuBLAS,2048,2048,2048,10,25,0.778895,22.0567
4,v6.2,2048,2048,2048,10,25,1.06942,16.0646
5,cuBLAS,2048,2048,2048,10,25,0.77697,22.1114
5,v6.2,2048,2048,2048,10,25,0.912179,18.8339
5,v6.3,2048,2048,2048,10,25,0.87212,19.699
6,v6.2,2048,2048,2048,10,25,0.973128,17.6543
6,v6.3,2048,2048,2048,10,25,0.877527,19.5776
6,cuBLAS,2048,2048,2048,10,25,0.725238,23.6886
7,v6.3,2048,2048,2048,10,25,0.845333,20.3232
7,cuBLAS,2048,2048,2048,10,25,0.709591,24.2109
7,v6.2,2048,2048,2048,10,25,0.964157,17.8185
8,cuBLAS,2048,2048,2048,10,25,0.757514,22.6793
8,v6.2,2048,2048,2048,10,25,0.980419,17.523
8,v6.3,2048,2048,2048,10,25,1.10051,15.6108
9,v6.2,2048,2048,2048,10,25,1.11321,15.4327
9,v6.3,2048,2048,2048,10,25,1.08929,15.7716
9,cuBLAS,2048,2048,2048,10,25,0.813097,21.1289
10,v6.3,2048,2048,2048,10,25,0.96727,17.7612
10,cuBLAS,2048,2048,2048,10,25,0.712499,24.1121
10,v6.2,2048,2048,2048,10,25,0.959447,17.906
11,cuBLAS,2048,2048,2048,10,25,0.72663,23.6432
11,v6.2,2048,2048,2048,10,25,0.948961,18.1039
11,v6.3,2048,2048,2048,10,25,0.903209,19.0209
0,v6.2,4096,4096,4096,10,10,8.10885,16.9493
0,v6.3,4096,4096,4096,10,10,7.25832,18.9354
0,cuBLAS,4096,4096,4096,10,10,5.16731,26.5978
1,v6.3,4096,4096,4096,10,10,7.08588,19.3962
1,cuBLAS,4096,4096,4096,10,10,5.19608,26.4505
1,v6.2,4096,4096,4096,10,10,8.01987,17.1373
2,cuBLAS,4096,4096,4096,10,10,5.13843,26.7473
2,v6.2,4096,4096,4096,10,10,8.9173,15.4126
2,v6.3,4096,4096,4096,10,10,7.83811,17.5347
3,v6.2,4096,4096,4096,10,10,9.40022,14.6208
3,v6.3,4096,4096,4096,10,10,7.24111,18.9804
3,cuBLAS,4096,4096,4096,10,10,5.15287,26.6723
4,v6.3,4096,4096,4096,10,10,7.582,18.127
4,cuBLAS,4096,4096,4096,10,10,5.95333,23.0861
4,v6.2,4096,4096,4096,10,10,8.89375,15.4534
5,cuBLAS,4096,4096,4096,10,10,5.77352,23.8051
5,v6.2,4096,4096,4096,10,10,9.32762,14.7346
5,v6.3,4096,4096,4096,10,10,8.76329,15.6835
6,v6.2,4096,4096,4096,10,10,11.2531,12.2134
6,v6.3,4096,4096,4096,10,10,9.63758,14.2607
6,cuBLAS,4096,4096,4096,10,10,5.90049,23.2928
7,v6.3,4096,4096,4096,10,10,8.16138,16.8402
7,cuBLAS,4096,4096,4096,10,10,6.86121,20.0313
7,v6.2,4096,4096,4096,10,10,8.33259,16.4941
8,cuBLAS,4096,4096,4096,10,10,5.21554,26.3518
8,v6.2,4096,4096,4096,10,10,7.96221,17.2614
8,v6.3,4096,4096,4096,10,10,6.90299,19.9101
9,v6.2,4096,4096,4096,10,10,9.56549,14.3682
9,v6.3,4096,4096,4096,10,10,8.3158,16.5274
9,cuBLAS,4096,4096,4096,10,10,5.99235,22.9358
10,v6.3,4096,4096,4096,10,10,6.87585,19.9886
10,cuBLAS,4096,4096,4096,10,10,5.16629,26.6031
10,v6.2,4096,4096,4096,10,10,8.57078,16.0358
11,cuBLAS,4096,4096,4096,10,10,5.89302,23.3223
11,v6.2,4096,4096,4096,10,10,8.10005,16.9677
11,v6.3,4096,4096,4096,10,10,6.97549,19.7031
0,v6.2,512,2048,1024,10,200,0.145162,14.7937
0,v6.3,512,2048,1024,10,200,0.15851,13.5479
0,cuBLAS,512,2048,1024,10,200,0.103091,20.8309
1,v6.3,512,2048,1024,10,200,0.158029,13.5892
1,cuBLAS,512,2048,1024,10,200,0.104612,20.5281
1,v6.2,512,2048,1024,10,200,0.164731,13.0363
2,cuBLAS,512,2048,1024,10,200,0.118615,18.1046
2,v6.2,512,2048,1024,10,200,0.15978,13.4403
2,v6.3,512,2048,1024,10,200,0.18176,11.8149
3,v6.2,512,2048,1024,10,200,0.167153,12.8474
3,v6.3,512,2048,1024,10,200,0.186803,11.496
3,cuBLAS,512,2048,1024,10,200,0.11884,18.0703
4,v6.3,512,2048,1024,10,200,0.18582,11.5568
4,cuBLAS,512,2048,1024,10,200,0.116321,18.4617
4,v6.2,512,2048,1024,10,200,0.166456,12.9012
5,cuBLAS,512,2048,1024,10,200,0.125107,17.1651
5,v6.2,512,2048,1024,10,200,0.164905,13.0226
5,v6.3,512,2048,1024,10,200,0.186747,11.4994
6,v6.2,512,2048,1024,10,200,0.158597,13.5405
6,v6.3,512,2048,1024,10,200,0.164582,13.0481
6,cuBLAS,512,2048,1024,10,200,0.100721,21.3212
7,v6.3,512,2048,1024,10,200,0.161705,13.2803
7,cuBLAS,512,2048,1024,10,200,0.102461,20.9589
7,v6.2,512,2048,1024,10,200,0.152151,14.1142
8,cuBLAS,512,2048,1024,10,200,0.107858,19.9103
8,v6.2,512,2048,1024,10,200,0.156339,13.7361
8,v6.3,512,2048,1024,10,200,0.165361,12.9867
9,v6.2,512,2048,1024,10,200,0.153795,13.9633
9,v6.3,512,2048,1024,10,200,0.177162,12.1216
9,cuBLAS,512,2048,1024,10,200,0.117176,18.3269
10,v6.3,512,2048,1024,10,200,0.196951,10.9036
10,cuBLAS,512,2048,1024,10,200,0.122598,17.5164
10,v6.2,512,2048,1024,10,200,0.178268,12.0464
11,cuBLAS,512,2048,1024,10,200,0.128717,16.6838
11,v6.2,512,2048,1024,10,200,0.15893,13.5121
11,v6.3,512,2048,1024,10,200,0.171848,12.4964
0,v6.2,2048,512,1024,10,200,0.165012,13.0141
0,v6.3,2048,512,1024,10,200,0.178304,12.0439
0,cuBLAS,2048,512,1024,10,200,0.121585,17.6625
1,v6.3,2048,512,1024,10,200,0.157061,13.6729
1,cuBLAS,2048,512,1024,10,200,0.109184,19.6685
1,v6.2,2048,512,1024,10,200,0.14399,14.9141
2,cuBLAS,2048,512,1024,10,200,0.107991,19.8858
2,v6.2,2048,512,1024,10,200,0.137068,15.6673
2,v6.3,2048,512,1024,10,200,0.155581,13.803
3,v6.2,2048,512,1024,10,200,0.136474,15.7355
3,v6.3,2048,512,1024,10,200,0.150902,14.231
3,cuBLAS,2048,512,1024,10,200,0.106225,20.2164
4,v6.3,2048,512,1024,10,200,0.152259,14.1042
4,cuBLAS,2048,512,1024,10,200,0.11178,19.2117
4,v6.2,2048,512,1024,10,200,0.165105,13.0068
5,cuBLAS,2048,512,1024,10,200,0.12503,17.1757
5,v6.2,2048,512,1024,10,200,0.167987,12.7836
5,v6.3,2048,512,1024,10,200,0.18263,11.7586
6,v6.2,2048,512,1024,10,200,0.160676,13.3653
6,v6.3,2048,512,1024,10,200,0.163261,13.1536
6,cuBLAS,2048,512,1024,10,200,0.112804,19.0373
7,v6.3,2048,512,1024,10,200,0.157747,13.6134
7,cuBLAS,2048,512,1024,10,200,0.107187,20.0349
7,v6.2,2048,512,1024,10,200,0.142771,15.0414
8,cuBLAS,2048,512,1024,10,200,0.111201,19.3117
8,v6.2,2048,512,1024,10,200,0.143642,14.9503
8,v6.3,2048,512,1024,10,200,0.159386,13.4735
9,v6.2,2048,512,1024,10,200,0.146324,14.6762
9,v6.3,2048,512,1024,10,200,0.159263,13.4839
9,cuBLAS,2048,512,1024,10,200,0.11286,19.0278
10,v6.3,2048,512,1024,10,200,0.162729,13.1967
10,cuBLAS,2048,512,1024,10,200,0.109496,19.6124
10,v6.2,2048,512,1024,10,200,0.145285,14.7812
11,cuBLAS,2048,512,1024,10,200,0.111836,19.2021
11,v6.2,2048,512,1024,10,200,0.144788,14.8319
11,v6.3,2048,512,1024,10,200,0.159104,13.4974
0,v6.2,1024,1024,64,10,200,0.0233677,5.74373
0,v6.3,1024,1024,64,10,200,0.0303667,4.4199
0,cuBLAS,1024,1024,64,10,200,0.0198451,6.76326
1,v6.3,1024,1024,64,10,200,0.0223795,5.99735
1,cuBLAS,1024,1024,64,10,200,0.0297779,4.50729
1,v6.2,1024,1024,64,10,200,0.018391,7.298
2,cuBLAS,1024,1024,64,10,200,0.0172902,7.76263
2,v6.2,1024,1024,64,10,200,0.0254362,5.27665
2,v6.3,1024,1024,64,10,200,0.024663,5.44206
3,v6.2,1024,1024,64,10,200,0.023296,5.76141
3,v6.3,1024,1024,64,10,200,0.0261939,5.124
3,cuBLAS,1024,1024,64,10,200,0.0228352,5.87767
4,v6.3,1024,1024,64,10,200,0.0236186,5.68272
4,cuBLAS,1024,1024,64,10,200,0.0250112,5.3663
4,v6.2,1024,1024,64,10,200,0.0234701,5.71867
5,cuBLAS,1024,1024,64,10,200,0.0255181,5.25971
5,v6.2,1024,1024,64,10,200,0.018473,7.26563
5,v6.3,1024,1024,64,10,200,0.0257843,5.2054
6,v6.2,1024,1024,64,10,200,0.0238234,5.63387
6,v6.3,1024,1024,64,10,200,0.0230554,5.82154
6,cuBLAS,1024,1024,64,10,200,0.0213555,6.28492
7,v6.3,1024,1024,64,10,200,0.0246426,5.44658
7,cuBLAS,1024,1024,64,10,200,0.026665,5.03349
7,v6.2,1024,1024,64,10,200,0.0255027,5.26288
8,cuBLAS,1024,1024,64,10,200,0.0202086,6.6416
8,v6.2,1024,1024,64,10,200,0.027945,4.80293
8,v6.3,1024,1024,64,10,200,0.0242227,5.54098
9,v6.2,1024,1024,64,10,200,0.0281907,4.76106
9,v6.3,1024,1024,64,10,200,0.0252365,5.3184
9,cuBLAS,1024,1024,64,10,200,0.0260762,5.14714
10,v6.3,1024,1024,64,10,200,0.0270746,4.95734
10,cuBLAS,1024,1024,64,10,200,0.0292454,4.58936
10,v6.2,1024,1024,64,10,200,0.0302848,4.43185
11,cuBLAS,1024,1024,64,10,200,0.0227174,5.90814
11,v6.2,1024,1024,64,10,200,0.0243046,5.52231
11,v6.3,1024,1024,64,10,200,0.027561,4.86985
0,v6.2,1023,1025,1007,10,200,0.215808,9.78569
0,v6.3,1023,1025,1007,10,200,0.223611,9.44422
0,cuBLAS,1023,1025,1007,10,200,0.171873,12.2871
1,v6.3,1023,1025,1007,10,200,0.217697,9.70076
1,cuBLAS,1023,1025,1007,10,200,0.171853,12.2886
1,v6.2,1023,1025,1007,10,200,0.212419,9.94183
2,cuBLAS,1023,1025,1007,10,200,0.172687,12.2292
2,v6.2,1023,1025,1007,10,200,0.216863,9.7381
2,v6.3,1023,1025,1007,10,200,0.222909,9.47394
3,v6.2,1023,1025,1007,10,200,0.218004,9.68709
3,v6.3,1023,1025,1007,10,200,0.221455,9.53614
3,cuBLAS,1023,1025,1007,10,200,0.171709,12.2989
4,v6.3,1023,1025,1007,10,200,0.219587,9.6173
4,cuBLAS,1023,1025,1007,10,200,0.173036,12.2046
4,v6.2,1023,1025,1007,10,200,0.215096,9.81807
5,cuBLAS,1023,1025,1007,10,200,0.172652,12.2317
5,v6.2,1023,1025,1007,10,200,0.227256,9.29272
5,v6.3,1023,1025,1007,10,200,0.221537,9.53262
6,v6.2,1023,1025,1007,10,200,0.217539,9.70784
6,v6.3,1023,1025,1007,10,200,0.220047,9.59716
6,cuBLAS,1023,1025,1007,10,200,0.171612,12.3058
7,v6.3,1023,1025,1007,10,200,0.213576,9.88797
7,cuBLAS,1023,1025,1007,10,200,0.181094,11.6615
7,v6.2,1023,1025,1007,10,200,0.224963,9.38747
8,cuBLAS,1023,1025,1007,10,200,0.177956,11.8672
8,v6.2,1023,1025,1007,10,200,0.223821,9.43536
8,v6.3,1023,1025,1007,10,200,0.228449,9.2442
9,v6.2,1023,1025,1007,10,200,0.232719,9.07458
9,v6.3,1023,1025,1007,10,200,0.230344,9.16817
9,cuBLAS,1023,1025,1007,10,200,0.17729,11.9117
10,v6.3,1023,1025,1007,10,200,0.230948,9.14419
10,cuBLAS,1023,1025,1007,10,200,0.176225,11.9837
10,v6.2,1023,1025,1007,10,200,0.227364,9.28833
11,cuBLAS,1023,1025,1007,10,200,0.181637,11.6266
11,v6.2,1023,1025,1007,10,200,0.223677,9.44141
11,v6.3,1023,1025,1007,10,200,0.226058,9.34197
````

## raw/v63_final_timing_2_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_memcheck.log

SHA256：`60f6012df72e24f3b1691c81346f196f5a7657496132f613a5c8e3f7b315d575`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v63_profile_cublas_1024.log

SHA256：`118471142c95ad36dc6cbde351f8ab7ccd34231e35e8ec18753cffa73c21e1cc`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_cublas_1024 --csv --log-file build/v63_profile_cublas_1024.csv ./build/bench_hgemm --profile cublas 1024 1024 1024
````

## raw/v63_profile_cublas_4096.log

SHA256：`7bdea13bb2d4f05aef7956a82afe4161bca5422f35f0f2f1f445e3c06898cba5`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_cublas_4096 --csv --log-file build/v63_profile_cublas_4096.csv ./build/bench_hgemm --profile cublas 4096 4096 4096
````

## raw/v63_profile_v6_2_1024.log

SHA256：`f48579b10e9599c75a579d1eb9a570b39c324769af2be5b95001dfb4925ec223`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_v6_2_1024 --csv --log-file build/v63_profile_v6_2_1024.csv ./build/bench_hgemm --profile v6_2 1024 1024 1024
````

## raw/v63_profile_v6_2_4096.log

SHA256：`a8bb06f624a330bc794a9ab772c8f879e8079e32fa31a6769ccd75a689d56d28`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_v6_2_4096 --csv --log-file build/v63_profile_v6_2_4096.csv ./build/bench_hgemm --profile v6_2 4096 4096 4096
````

## raw/v63_profile_v6_3_1024.log

SHA256：`1d03623abd0071407ce6c1d2fcefa3c1d1682d05226f1e1db6250bff9b684fcc`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_v6_3_1024 --csv --log-file build/v63_profile_v6_3_1024.csv ./build/bench_hgemm --profile v6_3 1024 1024 1024
````

## raw/v63_profile_v6_3_4096.log

SHA256：`5ac8866cbc79d415e7464be4cff102f4bb0cd2e7bbd65b59a543f627daa167ee`

````text
/usr/local/cuda-12.8/bin/ncu --kernel-name regex:.*gemm.* --launch-count 1 --section LaunchStats --section Occupancy --section SpeedOfLight --section SchedulerStats --section WarpStateStats --section MemoryWorkloadAnalysis_Tables --section SourceCounters --metrics sm__inst_executed_pipe_tensor.sum,smsp__inst_executed.sum --export build/v63_profile_v6_3_4096 --csv --log-file build/v63_profile_v6_3_4096.csv ./build/bench_hgemm --profile v6_3 4096 4096 4096
````

## raw/v63_racecheck.log

SHA256：`67de3cd44c94f304215b5eb3cc8d95b4ee84e2aa556d8992869cc58c7c2feba0`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v63_summary.json

SHA256：`6c6fd581315c5b278242781bae00ae90e579b6f6423f37b6e9043ac5b8acb8e3`

````text
[
  {
    "shape": [
      "512",
      "512",
      "512"
    ],
    "median_ms": {
      "v6.2": 0.0268211,
      "v6.3": 0.0303181,
      "cuBLAS": 0.0271027
    },
    "v63_tflops": 8.853966970225708,
    "v63_pct_cublas": 89.3944541379572,
    "speedup": 0.884656360391977,
    "paired_win": 4,
    "paired_batch_speedup": [
      0.898542894112309,
      0.9008880405015534,
      0.873396630799891
    ],
    "range_ms": {
      "v6.2": [
        0.0240691,
        0.040576
      ],
      "v6.3": [
        0.0289946,
        0.0384666
      ],
      "cuBLAS": [
        0.0254566,
        0.0444211
      ]
    }
  },
  {
    "shape": [
      "1024",
      "1024",
      "1024"
    ],
    "median_ms": {
      "v6.2": 0.143086,
      "v6.3": 0.1622785,
      "cuBLAS": 0.161539
    },
    "v63_tflops": 13.233322023558266,
    "v63_pct_cublas": 99.5443019253937,
    "speedup": 0.8817310980813847,
    "paired_win": 0,
    "paired_batch_speedup": [
      0.8923900223461692,
      0.8736891899861489,
      0.8779345598914425
    ],
    "range_ms": {
      "v6.2": [
        0.133504,
        0.180183
      ],
      "v6.3": [
        0.152924,
        0.191119
      ],
      "cuBLAS": [
        0.154045,
        0.182456
      ]
    }
  },
  {
    "shape": [
      "2048",
      "2048",
      "2048"
    ],
    "median_ms": {
      "v6.2": 1.0036645,
      "v6.3": 0.9732095000000001,
      "cuBLAS": 0.7779325
    },
    "v63_tflops": 17.652796426668665,
    "v63_pct_cublas": 79.9347416974454,
    "speedup": 1.031293364892143,
    "paired_win": 30,
    "paired_batch_speedup": [
      1.056458508810983,
      1.0517676122997532,
      1.043647632403263
    ],
    "range_ms": {
      "v6.2": [
        0.859259,
        1.18944
      ],
      "v6.3": [
        0.833045,
        1.11968
      ],
      "cuBLAS": [
        0.684483,
        0.899318
      ]
    }
  },
  {
    "shape": [
      "4096",
      "4096",
      "4096"
    ],
    "median_ms": {
      "v6.2": 8.068505,
      "v6.3": 7.084905,
      "cuBLAS": 5.1482600000000005
    },
    "v63_tflops": 19.398842111785548,
    "v63_pct_cublas": 72.6651945227212,
    "speedup": 1.1388303724608868,
    "paired_win": 36,
    "paired_batch_speedup": [
      1.135047786277925,
      1.1471657832167708,
      1.1518613198333334
    ],
    "range_ms": {
      "v6.2": [
        7.88746,
        11.2531
      ],
      "v6.3": [
        6.85425,
        9.63758
      ],
      "cuBLAS": [
        5.02692,
        6.86121
      ]
    }
  },
  {
    "shape": [
      "512",
      "2048",
      "1024"
    ],
    "median_ms": {
      "v6.2": 0.148759,
      "v6.3": 0.164943,
      "cuBLAS": 0.1079835
    },
    "v63_tflops": 13.019550074874351,
    "v63_pct_cublas": 65.46716138302322,
    "speedup": 0.9018812559490248,
    "paired_win": 1,
    "paired_batch_speedup": [
      0.8844075960211986,
      0.9036969723585209,
      0.9104648217414848
    ],
    "range_ms": {
      "v6.2": [
        0.139581,
        0.178268
      ],
      "v6.3": [
        0.156252,
        0.196951
      ],
      "cuBLAS": [
        0.100721,
        0.128717
      ]
    }
  },
  {
    "shape": [
      "2048",
      "512",
      "1024"
    ],
    "median_ms": {
      "v6.2": 0.137247,
      "v6.3": 0.1519795,
      "cuBLAS": 0.10635
    },
    "v63_tflops": 14.130087597340431,
    "v63_pct_cublas": 69.97654288900806,
    "speedup": 0.9030625840985134,
    "paired_win": 1,
    "paired_batch_speedup": [
      0.8933643535073552,
      0.8999974213224127,
      0.9133993380132248
    ],
    "range_ms": {
      "v6.2": [
        0.129239,
        0.167987
      ],
      "v6.3": [
        0.147195,
        0.18263
      ],
      "cuBLAS": [
        0.102057,
        0.12503
      ]
    }
  },
  {
    "shape": [
      "1024",
      "1024",
      "64"
    ],
    "median_ms": {
      "v6.2": 0.022791699999999998,
      "v6.3": 0.022149099999999998,
      "cuBLAS": 0.019192300000000002
    },
    "v63_tflops": 6.059737325670119,
    "v63_pct_cublas": 86.65047338266568,
    "speedup": 1.0290124655177864,
    "paired_win": 19,
    "paired_batch_speedup": [
      0.9594932125101105,
      1.0806761940075387,
      1.0125315943136937
    ],
    "range_ms": {
      "v6.2": [
        0.0180378,
        0.0334694
      ],
      "v6.3": [
        0.0186266,
        0.0359731
      ],
      "cuBLAS": [
        0.0145306,
        0.0433254
      ]
    }
  },
  {
    "shape": [
      "1023",
      "1025",
      "1007"
    ],
    "median_ms": {
      "v6.2": 0.215452,
      "v6.3": 0.21911,
      "cuBLAS": 0.1716605
    },
    "v63_tflops": 9.638218474738716,
    "v63_pct_cublas": 78.34443886632285,
    "speedup": 0.9833051891743874,
    "paired_win": 5,
    "paired_batch_speedup": [
      0.9626662080175252,
      0.9716984697900158,
      0.9844490268811689
    ],
    "range_ms": {
      "v6.2": [
        0.206295,
        0.232719
      ],
      "v6.3": [
        0.211727,
        0.233124
      ],
      "cuBLAS": [
        0.165775,
        0.18366
      ]
    }
  }
]
````

## raw/v63_synccheck.log

SHA256：`60f6012df72e24f3b1691c81346f196f5a7657496132f613a5c8e3f7b315d575`

````text
========= COMPUTE-SANITIZER
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v63_table.log

SHA256：`0c0fcbf59621ecd2b1c2905502259ca44f97b63d43132aa672bdf057a0d03de1`

````text
HGEMM Benchmark
M = 1024, N = 1024, K = 1024

Correctness
v0 naive     Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v1 shared    Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v2 register  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v3 register  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v4 half2     Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5 cp.async  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5.1 double  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v5.2 bounds  Max error: 0.0078125, Mean error: 3.50082e-06, Failed: 0 [PASS]
v6 WMMA      Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.1 pad     Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.2 vector  Max error: 0, Mean error: 0, Failed: 0 [PASS]
v6.3 reuse   Max error: 0, Mean error: 0, Failed: 0 [PASS]

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.4463         0.8778         6.4441
v1 shared               1.8724         1.1469         8.4195
v2 register             0.9809         2.1893        16.0716
v3 register             0.5025         4.2734        31.3704
v4 half2                0.5173         4.1511        30.4731
v5 cp.async             0.5054         4.2487        31.1892
v5.1 double             0.5281         4.0662        29.8497
v5.2 bounds             0.5130         4.1859        30.7285
v6 WMMA                 0.3359         6.3928        46.9288
v6.1 pad                0.2660         8.0722        59.2571
v6.2 vector             0.1361        15.7799       115.8390
v6.3 reuse              0.1692        12.6946        93.1901
cuBLAS                  0.1576        13.6223       100.0000

v2 / v1 Speedup: 1.9089x
v3 / v2 Speedup: 1.9519x
v3 / v0 Speedup: 4.8681x
v4 / v3 Speedup: 0.9714x
v5 / v4 Speedup: 1.0235x
v5.1 / v5.0 Speedup: 0.9571x
v5.2 / v5.1 Speedup: 1.0294x
````

## raw/v63_test_large.log

SHA256：`f49f6b370cb78a03451a8778e845824d7da2835b6e98a40cd3d6da226a9ec0e3`

````text
v6.3,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.3,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.3,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.3,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.3,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v63_test_small.log

SHA256：`2d740a7269ff722126c78b2b4cfa381249a89ec8bfee1861d6d742b9a8e6482a`

````text
v6.3,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.3,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
````

## raw/v63_timing_0.csv

SHA256：`e6a632bcf6e631e69f4b5e5b9be3cfc4928514f4f492d550c17d29ba01b8068f`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.0260659,10.2983
0,v6.3,512,512,512,10,200,0.029911,8.97446
0,cuBLAS,512,512,512,10,200,0.0246323,10.8977
1,v6.3,512,512,512,10,200,0.0319693,8.39667
1,cuBLAS,512,512,512,10,200,0.0274022,9.79611
1,v6.2,512,512,512,10,200,0.0259635,10.3389
2,cuBLAS,512,512,512,10,200,0.025984,10.3308
2,v6.2,512,512,512,10,200,0.0239206,11.2219
2,v6.3,512,512,512,10,200,0.0296397,9.05662
3,v6.2,512,512,512,10,200,0.0259533,10.343
3,v6.3,512,512,512,10,200,0.0296397,9.05662
3,cuBLAS,512,512,512,10,200,0.025984,10.3308
4,v6.3,512,512,512,10,200,0.0295936,9.07073
4,cuBLAS,512,512,512,10,200,0.025856,10.3819
4,v6.2,512,512,512,10,200,0.0253696,10.581
5,cuBLAS,512,512,512,10,200,0.0237517,11.3017
5,v6.2,512,512,512,10,200,0.0240282,11.1717
5,v6.3,512,512,512,10,200,0.0294963,9.10064
6,v6.2,512,512,512,10,200,0.0260762,10.2943
6,v6.3,512,512,512,10,200,0.0289434,9.27451
6,cuBLAS,512,512,512,10,200,0.0242842,11.0539
7,v6.3,512,512,512,10,200,0.0275814,9.73247
7,cuBLAS,512,512,512,10,200,0.0237568,11.2993
7,v6.2,512,512,512,10,200,0.0249958,10.7392
8,cuBLAS,512,512,512,10,200,0.0249139,10.7745
8,v6.2,512,512,512,10,200,0.0276122,9.72164
8,v6.3,512,512,512,10,200,0.0276173,9.71984
9,v6.2,512,512,512,10,200,0.0245248,10.9455
9,v6.3,512,512,512,10,200,0.0275251,9.75238
9,cuBLAS,512,512,512,10,200,0.0249088,10.7767
10,v6.3,512,512,512,10,200,0.0289946,9.25813
10,cuBLAS,512,512,512,10,200,0.0254771,10.5363
10,v6.2,512,512,512,10,200,0.0243354,11.0307
11,cuBLAS,512,512,512,10,200,0.024919,10.7723
11,v6.2,512,512,512,10,200,0.0244326,10.9868
11,v6.3,512,512,512,10,200,0.027689,9.69467
0,v6.2,1024,1024,1024,10,200,0.156493,13.7226
0,v6.3,1024,1024,1024,10,200,0.162504,13.215
0,cuBLAS,1024,1024,1024,10,200,0.165468,12.9782
1,v6.3,1024,1024,1024,10,200,0.16108,13.3318
1,cuBLAS,1024,1024,1024,10,200,0.159872,13.4325
1,v6.2,1024,1024,1024,10,200,0.154998,13.8549
2,cuBLAS,1024,1024,1024,10,200,0.158423,13.5554
2,v6.2,1024,1024,1024,10,200,0.148644,14.4472
2,v6.3,1024,1024,1024,10,200,0.159667,13.4497
3,v6.2,1024,1024,1024,10,200,0.144461,14.8655
3,v6.3,1024,1024,1024,10,200,0.16105,13.3343
3,cuBLAS,1024,1024,1024,10,200,0.160901,13.3466
4,v6.3,1024,1024,1024,10,200,0.161731,13.2782
4,cuBLAS,1024,1024,1024,10,200,0.161132,13.3275
4,v6.2,1024,1024,1024,10,200,0.153682,13.9736
5,cuBLAS,1024,1024,1024,10,200,0.159852,13.4342
5,v6.2,1024,1024,1024,10,200,0.15253,14.0791
5,v6.3,1024,1024,1024,10,200,0.159734,13.4441
6,v6.2,1024,1024,1024,10,200,0.144681,14.8429
6,v6.3,1024,1024,1024,10,200,0.159212,13.4882
6,cuBLAS,1024,1024,1024,10,200,0.160916,13.3453
7,v6.3,1024,1024,1024,10,200,0.163328,13.1483
7,cuBLAS,1024,1024,1024,10,200,0.158433,13.5545
7,v6.2,1024,1024,1024,10,200,0.15978,13.4403
8,cuBLAS,1024,1024,1024,10,200,0.159452,13.4679
8,v6.2,1024,1024,1024,10,200,0.160666,13.3662
8,v6.3,1024,1024,1024,10,200,0.161152,13.3258
9,v6.2,1024,1024,1024,10,200,0.144404,14.8713
9,v6.3,1024,1024,1024,10,200,0.163338,13.1475
9,cuBLAS,1024,1024,1024,10,200,0.157911,13.5993
10,v6.3,1024,1024,1024,10,200,0.160133,13.4106
10,cuBLAS,1024,1024,1024,10,200,0.160113,13.4123
10,v6.2,1024,1024,1024,10,200,0.158182,13.576
11,cuBLAS,1024,1024,1024,10,200,0.164454,13.0582
11,v6.2,1024,1024,1024,10,200,0.157158,13.6645
11,v6.3,1024,1024,1024,10,200,0.163517,13.1331
0,v6.2,2048,2048,2048,10,25,0.934953,18.3751
0,v6.3,2048,2048,2048,10,25,1.11165,15.4543
0,cuBLAS,2048,2048,2048,10,25,0.680591,25.2426
1,v6.3,2048,2048,2048,10,25,1.08044,15.9008
1,cuBLAS,2048,2048,2048,10,25,0.699228,24.5698
1,v6.2,2048,2048,2048,10,25,0.933396,18.4058
2,cuBLAS,2048,2048,2048,10,25,0.736789,23.3172
2,v6.2,2048,2048,2048,10,25,0.929382,18.4853
2,v6.3,2048,2048,2048,10,25,1.1264,15.252
3,v6.2,2048,2048,2048,10,25,0.928113,18.5105
3,v6.3,2048,2048,2048,10,25,1.11927,15.3491
3,cuBLAS,2048,2048,2048,10,25,0.712663,24.1066
4,v6.3,2048,2048,2048,10,25,1.09879,15.6352
4,cuBLAS,2048,2048,2048,10,25,0.685711,25.0541
4,v6.2,2048,2048,2048,10,25,0.933642,18.4009
5,cuBLAS,2048,2048,2048,10,25,0.703324,24.4267
5,v6.2,2048,2048,2048,10,25,0.924959,18.5737
5,v6.3,2048,2048,2048,10,25,1.13254,15.1693
6,v6.2,2048,2048,2048,10,25,0.972923,17.658
6,v6.3,2048,2048,2048,10,25,1.12312,15.2965
6,cuBLAS,2048,2048,2048,10,25,0.701399,24.4937
7,v6.3,2048,2048,2048,10,25,1.11841,15.3609
7,cuBLAS,2048,2048,2048,10,25,0.678339,25.3264
7,v6.2,2048,2048,2048,10,25,0.930161,18.4698
8,cuBLAS,2048,2048,2048,10,25,0.729825,23.5397
8,v6.2,2048,2048,2048,10,25,0.956334,17.9643
8,v6.3,2048,2048,2048,10,25,1.1155,15.401
9,v6.2,2048,2048,2048,10,25,0.9361,18.3526
9,v6.3,2048,2048,2048,10,25,1.12038,15.334
9,cuBLAS,2048,2048,2048,10,25,0.688579,24.9498
10,v6.3,2048,2048,2048,10,25,1.08114,15.8905
10,cuBLAS,2048,2048,2048,10,25,0.677683,25.3509
10,v6.2,2048,2048,2048,10,25,0.889242,19.3197
11,cuBLAS,2048,2048,2048,10,25,0.703447,24.4224
11,v6.2,2048,2048,2048,10,25,0.895263,19.1898
11,v6.3,2048,2048,2048,10,25,1.07602,15.9661
0,v6.2,4096,4096,4096,10,10,7.90917,17.3772
0,v6.3,4096,4096,4096,10,10,8.02775,17.1205
0,cuBLAS,4096,4096,4096,10,10,4.95493,27.7378
1,v6.3,4096,4096,4096,10,10,8.09779,16.9724
1,cuBLAS,4096,4096,4096,10,10,4.98831,27.5522
1,v6.2,4096,4096,4096,10,10,7.90548,17.3853
2,cuBLAS,4096,4096,4096,10,10,5.01699,27.3947
2,v6.2,4096,4096,4096,10,10,7.9274,17.3372
2,v6.3,4096,4096,4096,10,10,8.11233,16.942
3,v6.2,4096,4096,4096,10,10,7.84077,17.5288
3,v6.3,4096,4096,4096,10,10,8.13005,16.9051
3,cuBLAS,4096,4096,4096,10,10,4.98504,27.5703
4,v6.3,4096,4096,4096,10,10,8.17531,16.8115
4,cuBLAS,4096,4096,4096,10,10,4.98545,27.568
4,v6.2,4096,4096,4096,10,10,7.86084,17.484
5,cuBLAS,4096,4096,4096,10,10,5.03122,27.3172
5,v6.2,4096,4096,4096,10,10,7.84906,17.5102
5,v6.3,4096,4096,4096,10,10,8.98765,15.292
6,v6.2,4096,4096,4096,10,10,8.4224,16.3183
6,v6.3,4096,4096,4096,10,10,8.57344,16.0308
6,cuBLAS,4096,4096,4096,10,10,5.20335,26.4135
7,v6.3,4096,4096,4096,10,10,8.19538,16.7703
7,cuBLAS,4096,4096,4096,10,10,5.08856,27.0094
7,v6.2,4096,4096,4096,10,10,8.08561,16.998
8,cuBLAS,4096,4096,4096,10,10,5.10976,26.8973
8,v6.2,4096,4096,4096,10,10,7.99406,17.1926
8,v6.3,4096,4096,4096,10,10,8.12575,16.914
9,v6.2,4096,4096,4096,10,10,7.85992,17.4861
9,v6.3,4096,4096,4096,10,10,8.11049,16.9458
9,cuBLAS,4096,4096,4096,10,10,4.98197,27.5873
10,v6.3,4096,4096,4096,10,10,8.13486,16.8951
10,cuBLAS,4096,4096,4096,10,10,4.98176,27.5884
10,v6.2,4096,4096,4096,10,10,7.95197,17.2836
11,cuBLAS,4096,4096,4096,10,10,5.02518,27.3501
11,v6.2,4096,4096,4096,10,10,7.94358,17.3019
11,v6.3,4096,4096,4096,10,10,8.16026,16.8425
0,v6.2,512,2048,1024,10,200,0.14036,15.2999
0,v6.3,512,2048,1024,10,200,0.155822,13.7816
0,cuBLAS,512,2048,1024,10,200,0.102892,20.8713
1,v6.3,512,2048,1024,10,200,0.156662,13.7078
1,cuBLAS,512,2048,1024,10,200,0.101985,21.0568
1,v6.2,512,2048,1024,10,200,0.140483,15.2865
2,cuBLAS,512,2048,1024,10,200,0.102912,20.8672
2,v6.2,512,2048,1024,10,200,0.141742,15.1506
2,v6.3,512,2048,1024,10,200,0.154465,13.9027
3,v6.2,512,2048,1024,10,200,0.140262,15.3105
3,v6.3,512,2048,1024,10,200,0.153953,13.9489
3,cuBLAS,512,2048,1024,10,200,0.103188,20.8113
4,v6.3,512,2048,1024,10,200,0.154214,13.9253
4,cuBLAS,512,2048,1024,10,200,0.104177,20.6139
4,v6.2,512,2048,1024,10,200,0.142966,15.021
5,cuBLAS,512,2048,1024,10,200,0.102932,20.863
5,v6.2,512,2048,1024,10,200,0.141414,15.1857
5,v6.3,512,2048,1024,10,200,0.155991,13.7667
6,v6.2,512,2048,1024,10,200,0.139331,15.4129
6,v6.3,512,2048,1024,10,200,0.155848,13.7794
6,cuBLAS,512,2048,1024,10,200,0.103731,20.7024
7,v6.3,512,2048,1024,10,200,0.156058,13.7608
7,cuBLAS,512,2048,1024,10,200,0.102523,20.9464
7,v6.2,512,2048,1024,10,200,0.141716,15.1534
8,cuBLAS,512,2048,1024,10,200,0.101407,21.1769
8,v6.2,512,2048,1024,10,200,0.140667,15.2664
8,v6.3,512,2048,1024,10,200,0.155382,13.8207
9,v6.2,512,2048,1024,10,200,0.141384,15.189
9,v6.3,512,2048,1024,10,200,0.156365,13.7338
9,cuBLAS,512,2048,1024,10,200,0.10452,20.5462
10,v6.3,512,2048,1024,10,200,0.153344,14.0044
10,cuBLAS,512,2048,1024,10,200,0.10305,20.8392
10,v6.2,512,2048,1024,10,200,0.140411,15.2943
11,cuBLAS,512,2048,1024,10,200,0.104499,20.5502
11,v6.2,512,2048,1024,10,200,0.140472,15.2876
11,v6.3,512,2048,1024,10,200,0.155853,13.7789
0,v6.2,2048,512,1024,10,200,0.137139,15.6592
0,v6.3,2048,512,1024,10,200,0.166006,12.9362
0,cuBLAS,2048,512,1024,10,200,0.10967,19.5813
1,v6.3,2048,512,1024,10,200,0.159672,13.4493
1,cuBLAS,2048,512,1024,10,200,0.106511,20.162
1,v6.2,2048,512,1024,10,200,0.145807,14.7282
2,cuBLAS,2048,512,1024,10,200,0.104084,20.6321
2,v6.2,2048,512,1024,10,200,0.132644,16.1898
2,v6.3,2048,512,1024,10,200,0.152704,14.063
3,v6.2,2048,512,1024,10,200,0.134646,15.9491
3,v6.3,2048,512,1024,10,200,0.15298,14.0376
3,cuBLAS,2048,512,1024,10,200,0.105303,20.3934
4,v6.3,2048,512,1024,10,200,0.152422,14.089
4,cuBLAS,2048,512,1024,10,200,0.112246,19.132
4,v6.2,2048,512,1024,10,200,0.138578,15.4966
5,cuBLAS,2048,512,1024,10,200,0.103654,20.7177
5,v6.2,2048,512,1024,10,200,0.132388,16.2212
5,v6.3,2048,512,1024,10,200,0.158858,13.5182
6,v6.2,2048,512,1024,10,200,0.133468,16.0899
6,v6.3,2048,512,1024,10,200,0.156114,13.7559
6,cuBLAS,2048,512,1024,10,200,0.103444,20.7598
7,v6.3,2048,512,1024,10,200,0.152494,14.0824
7,cuBLAS,2048,512,1024,10,200,0.100142,21.4444
7,v6.2,2048,512,1024,10,200,0.131881,16.2835
8,cuBLAS,2048,512,1024,10,200,0.107428,19.99
8,v6.2,2048,512,1024,10,200,0.13634,15.7509
8,v6.3,2048,512,1024,10,200,0.153032,14.0329
9,v6.2,2048,512,1024,10,200,0.131589,16.3196
9,v6.3,2048,512,1024,10,200,0.155156,13.8408
9,cuBLAS,2048,512,1024,10,200,0.102979,20.8537
10,v6.3,2048,512,1024,10,200,0.152991,14.0367
10,cuBLAS,2048,512,1024,10,200,0.106004,20.2584
10,v6.2,2048,512,1024,10,200,0.13993,15.3469
11,cuBLAS,2048,512,1024,10,200,0.104735,20.504
11,v6.2,2048,512,1024,10,200,0.134031,16.0222
11,v6.3,2048,512,1024,10,200,0.15852,13.5471
0,v6.2,1024,1024,64,10,200,0.0379238,3.53914
0,v6.3,1024,1024,64,10,200,0.0344576,3.89516
0,cuBLAS,1024,1024,64,10,200,0.0368179,3.64545
1,v6.3,1024,1024,64,10,200,0.0330445,4.06173
1,cuBLAS,1024,1024,64,10,200,0.0362957,3.6979
1,v6.2,1024,1024,64,10,200,0.0257024,5.22199
2,cuBLAS,1024,1024,64,10,200,0.0218522,6.14208
2,v6.2,1024,1024,64,10,200,0.0201011,6.67713
2,v6.3,1024,1024,64,10,200,0.0201062,6.67543
3,v6.2,1024,1024,64,10,200,0.0200038,6.7096
3,v6.3,1024,1024,64,10,200,0.0181709,7.38642
3,cuBLAS,1024,1024,64,10,200,0.0161638,8.30358
4,v6.3,1024,1024,64,10,200,0.0185139,7.24956
4,cuBLAS,1024,1024,64,10,200,0.015447,8.6889
4,v6.2,1024,1024,64,10,200,0.0221491,6.05973
5,cuBLAS,1024,1024,64,10,200,0.0227174,5.90814
5,v6.2,1024,1024,64,10,200,0.021161,6.3427
5,v6.3,1024,1024,64,10,200,0.0195226,6.87501
6,v6.2,1024,1024,64,10,200,0.0195891,6.85165
6,v6.3,1024,1024,64,10,200,0.0190464,7.04688
6,cuBLAS,1024,1024,64,10,200,0.0162304,8.26953
7,v6.3,1024,1024,64,10,200,0.0182835,7.34091
7,cuBLAS,1024,1024,64,10,200,0.016087,8.34322
7,v6.2,1024,1024,64,10,200,0.0252058,5.32488
8,cuBLAS,1024,1024,64,10,200,0.0158106,8.48912
8,v6.2,1024,1024,64,10,200,0.0187085,7.17417
8,v6.3,1024,1024,64,10,200,0.0197222,6.8054
9,v6.2,1024,1024,64,10,200,0.0185907,7.21961
9,v6.3,1024,1024,64,10,200,0.0208077,6.45039
9,cuBLAS,1024,1024,64,10,200,0.0160461,8.36452
10,v6.3,1024,1024,64,10,200,0.0217498,6.171
10,cuBLAS,1024,1024,64,10,200,0.0206746,6.49193
10,v6.2,1024,1024,64,10,200,0.0195021,6.88223
11,cuBLAS,1024,1024,64,10,200,0.014889,9.01458
11,v6.2,1024,1024,64,10,200,0.0201267,6.66863
11,v6.3,1024,1024,64,10,200,0.0194509,6.90034
0,v6.2,1023,1025,1007,10,200,0.195753,10.7882
0,v6.3,1023,1025,1007,10,200,0.180296,11.7131
0,cuBLAS,1023,1025,1007,10,200,0.161326,13.0904
1,v6.3,1023,1025,1007,10,200,0.179318,11.777
1,cuBLAS,1023,1025,1007,10,200,0.157245,13.4302
1,v6.2,1023,1025,1007,10,200,0.193628,10.9066
2,cuBLAS,1023,1025,1007,10,200,0.165233,12.7809
2,v6.2,1023,1025,1007,10,200,0.19134,11.0371
2,v6.3,1023,1025,1007,10,200,0.18153,11.6335
3,v6.2,1023,1025,1007,10,200,0.19906,10.609
3,v6.3,1023,1025,1007,10,200,0.183721,11.4948
3,cuBLAS,1023,1025,1007,10,200,0.169221,12.4797
4,v6.3,1023,1025,1007,10,200,0.180398,11.7065
4,cuBLAS,1023,1025,1007,10,200,0.15873,13.3045
4,v6.2,1023,1025,1007,10,200,0.194708,10.8461
5,cuBLAS,1023,1025,1007,10,200,0.158838,13.2955
5,v6.2,1023,1025,1007,10,200,0.191017,11.0557
5,v6.3,1023,1025,1007,10,200,0.182042,11.6008
6,v6.2,1023,1025,1007,10,200,0.200709,10.5218
6,v6.3,1023,1025,1007,10,200,0.183593,11.5028
6,cuBLAS,1023,1025,1007,10,200,0.160758,13.1367
7,v6.3,1023,1025,1007,10,200,0.181407,11.6414
7,cuBLAS,1023,1025,1007,10,200,0.164895,12.8071
7,v6.2,1023,1025,1007,10,200,0.194304,10.8687
8,cuBLAS,1023,1025,1007,10,200,0.161731,13.0577
8,v6.2,1023,1025,1007,10,200,0.19477,10.8427
8,v6.3,1023,1025,1007,10,200,0.183101,11.5337
9,v6.2,1023,1025,1007,10,200,0.197018,10.719
9,v6.3,1023,1025,1007,10,200,0.182508,11.5712
9,cuBLAS,1023,1025,1007,10,200,0.159457,13.2439
10,v6.3,1023,1025,1007,10,200,0.1809,11.674
10,cuBLAS,1023,1025,1007,10,200,0.158454,13.3277
10,v6.2,1023,1025,1007,10,200,0.195374,10.8092
11,cuBLAS,1023,1025,1007,10,200,0.161213,13.0996
11,v6.2,1023,1025,1007,10,200,0.194412,10.8627
11,v6.3,1023,1025,1007,10,200,0.180838,11.678
````

## raw/v63_timing_0_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_timing_1.csv

SHA256：`b50454fc9aba3916804fb2867761d4259f5580233ca4d817a62300c2c9a55cc4`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.0283648,9.46368
0,v6.3,512,512,512,10,200,0.0308224,8.7091
0,cuBLAS,512,512,512,10,200,0.0298854,8.98215
1,v6.3,512,512,512,10,200,0.0346214,7.75345
1,cuBLAS,512,512,512,10,200,0.0291174,9.21906
1,v6.2,512,512,512,10,200,0.0294093,9.12758
2,cuBLAS,512,512,512,10,200,0.0346061,7.75689
2,v6.2,512,512,512,10,200,0.0302694,8.8682
2,v6.3,512,512,512,10,200,0.0339251,7.91259
3,v6.2,512,512,512,10,200,0.0320461,8.37655
3,v6.3,512,512,512,10,200,0.03136,8.5598
3,cuBLAS,512,512,512,10,200,0.0297421,9.02544
4,v6.3,512,512,512,10,200,0.0321485,8.34986
4,cuBLAS,512,512,512,10,200,0.0281958,9.52039
4,v6.2,512,512,512,10,200,0.0293274,9.15307
5,cuBLAS,512,512,512,10,200,0.0324454,8.27344
5,v6.2,512,512,512,10,200,0.0293632,9.1419
5,v6.3,512,512,512,10,200,0.0339558,7.90543
6,v6.2,512,512,512,10,200,0.0283034,9.48423
6,v6.3,512,512,512,10,200,0.032512,8.2565
6,cuBLAS,512,512,512,10,200,0.0334541,8.024
7,v6.3,512,512,512,10,200,0.0328448,8.17284
7,cuBLAS,512,512,512,10,200,0.0301261,8.9104
7,v6.2,512,512,512,10,200,0.0290048,9.25486
8,cuBLAS,512,512,512,10,200,0.0278938,9.6235
8,v6.2,512,512,512,10,200,0.0288666,9.29918
8,v6.3,512,512,512,10,200,0.0312934,8.57801
9,v6.2,512,512,512,10,200,0.028841,9.30744
9,v6.3,512,512,512,10,200,0.0330394,8.12472
9,cuBLAS,512,512,512,10,200,0.0288,9.32068
10,v6.3,512,512,512,10,200,0.0327987,8.18433
10,cuBLAS,512,512,512,10,200,0.0279859,9.5918
10,v6.2,512,512,512,10,200,0.0290765,9.23205
11,cuBLAS,512,512,512,10,200,0.0364954,7.35533
11,v6.2,512,512,512,10,200,0.0283648,9.46368
11,v6.3,512,512,512,10,200,0.0338944,7.91976
0,v6.2,1024,1024,1024,10,200,0.180895,11.8715
0,v6.3,1024,1024,1024,10,200,0.194673,11.0313
0,cuBLAS,1024,1024,1024,10,200,0.184847,11.6176
1,v6.3,1024,1024,1024,10,200,0.18347,11.7048
1,cuBLAS,1024,1024,1024,10,200,0.160681,13.3649
1,v6.2,1024,1024,1024,10,200,0.147067,14.6021
2,cuBLAS,1024,1024,1024,10,200,0.162964,13.1776
2,v6.2,1024,1024,1024,10,200,0.163103,13.1664
2,v6.3,1024,1024,1024,10,200,0.163092,13.1673
3,v6.2,1024,1024,1024,10,200,0.146698,14.6388
3,v6.3,1024,1024,1024,10,200,0.162959,13.178
3,cuBLAS,1024,1024,1024,10,200,0.164122,13.0847
4,v6.3,1024,1024,1024,10,200,0.162642,13.2038
4,cuBLAS,1024,1024,1024,10,200,0.162847,13.1871
4,v6.2,1024,1024,1024,10,200,0.148111,14.4991
5,cuBLAS,1024,1024,1024,10,200,0.169416,12.6758
5,v6.2,1024,1024,1024,10,200,0.142264,15.095
5,v6.3,1024,1024,1024,10,200,0.162816,13.1896
6,v6.2,1024,1024,1024,10,200,0.144609,14.8502
6,v6.3,1024,1024,1024,10,200,0.16405,13.0904
6,cuBLAS,1024,1024,1024,10,200,0.162545,13.2117
7,v6.3,1024,1024,1024,10,200,0.16194,13.2609
7,cuBLAS,1024,1024,1024,10,200,0.162468,13.2179
7,v6.2,1024,1024,1024,10,200,0.147517,14.5575
8,cuBLAS,1024,1024,1024,10,200,0.166175,12.923
8,v6.2,1024,1024,1024,10,200,0.147932,14.5167
8,v6.3,1024,1024,1024,10,200,0.16426,13.0737
9,v6.2,1024,1024,1024,10,200,0.145459,14.7635
9,v6.3,1024,1024,1024,10,200,0.162499,13.2154
9,cuBLAS,1024,1024,1024,10,200,0.164931,13.0205
10,v6.3,1024,1024,1024,10,200,0.159519,13.4623
10,cuBLAS,1024,1024,1024,10,200,0.163118,13.1652
10,v6.2,1024,1024,1024,10,200,0.151726,14.1537
11,cuBLAS,1024,1024,1024,10,200,0.16213,13.2454
11,v6.2,1024,1024,1024,10,200,0.163533,13.1318
11,v6.3,1024,1024,1024,10,200,0.162545,13.2117
0,v6.2,2048,2048,2048,10,25,0.943063,18.2171
0,v6.3,2048,2048,2048,10,25,1.1375,15.1032
0,cuBLAS,2048,2048,2048,10,25,0.702013,24.4723
1,v6.3,2048,2048,2048,10,25,1.10146,15.5974
1,cuBLAS,2048,2048,2048,10,25,0.686039,25.0421
1,v6.2,2048,2048,2048,10,25,0.933806,18.3977
2,cuBLAS,2048,2048,2048,10,25,0.712868,24.0997
2,v6.2,2048,2048,2048,10,25,0.931963,18.4341
2,v6.3,2048,2048,2048,10,25,1.06045,16.2005
3,v6.2,2048,2048,2048,10,25,0.867328,19.8078
3,v6.3,2048,2048,2048,10,25,1.08339,15.8575
3,cuBLAS,2048,2048,2048,10,25,0.659128,26.0645
4,v6.3,2048,2048,2048,10,25,1.03203,16.6467
4,cuBLAS,2048,2048,2048,10,25,0.659784,26.0386
4,v6.2,2048,2048,2048,10,25,0.874783,19.639
5,cuBLAS,2048,2048,2048,10,25,0.686162,25.0376
5,v6.2,2048,2048,2048,10,25,0.889569,19.3126
5,v6.3,2048,2048,2048,10,25,1.08012,15.9056
6,v6.2,2048,2048,2048,10,25,0.883139,19.4532
6,v6.3,2048,2048,2048,10,25,1.08139,15.8869
6,cuBLAS,2048,2048,2048,10,25,0.668918,25.6831
7,v6.3,2048,2048,2048,10,25,1.05742,16.2469
7,cuBLAS,2048,2048,2048,10,25,0.671375,25.5891
7,v6.2,2048,2048,2048,10,25,0.881295,19.4939
8,cuBLAS,2048,2048,2048,10,25,0.695501,24.7014
8,v6.2,2048,2048,2048,10,25,0.900137,19.0858
8,v6.3,2048,2048,2048,10,25,1.09642,15.6691
9,v6.2,2048,2048,2048,10,25,0.901489,19.0572
9,v6.3,2048,2048,2048,10,25,1.10899,15.4914
9,cuBLAS,2048,2048,2048,10,25,0.670884,25.6078
10,v6.3,2048,2048,2048,10,25,1.04382,16.4586
10,cuBLAS,2048,2048,2048,10,25,0.671744,25.575
10,v6.2,2048,2048,2048,10,25,0.889283,19.3188
11,cuBLAS,2048,2048,2048,10,25,0.710205,24.19
11,v6.2,2048,2048,2048,10,25,0.890429,19.2939
11,v6.3,2048,2048,2048,10,25,1.09199,15.7326
0,v6.2,4096,4096,4096,10,10,7.95423,17.2787
0,v6.3,4096,4096,4096,10,10,8.11971,16.9266
0,cuBLAS,4096,4096,4096,10,10,5.00797,27.444
1,v6.3,4096,4096,4096,10,10,8.11776,16.9307
1,cuBLAS,4096,4096,4096,10,10,5.0473,27.2302
1,v6.2,4096,4096,4096,10,10,7.94163,17.3061
2,cuBLAS,4096,4096,4096,10,10,4.98545,27.568
2,v6.2,4096,4096,4096,10,10,7.97798,17.2273
2,v6.3,4096,4096,4096,10,10,8.19671,16.7676
3,v6.2,4096,4096,4096,10,10,7.89565,17.4069
3,v6.3,4096,4096,4096,10,10,8.18043,16.8009
3,cuBLAS,4096,4096,4096,10,10,5.12113,26.8376
4,v6.3,4096,4096,4096,10,10,8.08212,17.0053
4,cuBLAS,4096,4096,4096,10,10,5.02385,27.3573
4,v6.2,4096,4096,4096,10,10,7.94911,17.2899
5,cuBLAS,4096,4096,4096,10,10,5.05047,27.2131
5,v6.2,4096,4096,4096,10,10,7.89483,17.4087
5,v6.3,4096,4096,4096,10,10,8.19978,16.7613
6,v6.2,4096,4096,4096,10,10,8.61133,15.9603
6,v6.3,4096,4096,4096,10,10,8.91443,15.4176
6,cuBLAS,4096,4096,4096,10,10,5.54496,24.7863
7,v6.3,4096,4096,4096,10,10,8.7255,15.7514
7,cuBLAS,4096,4096,4096,10,10,5.13372,26.7718
7,v6.2,4096,4096,4096,10,10,8.06083,17.0502
8,cuBLAS,4096,4096,4096,10,10,5.17857,26.5399
8,v6.2,4096,4096,4096,10,10,8.11121,16.9443
8,v6.3,4096,4096,4096,10,10,8.33004,16.4992
9,v6.2,4096,4096,4096,10,10,8.13373,16.8974
9,v6.3,4096,4096,4096,10,10,8.20797,16.7446
9,cuBLAS,4096,4096,4096,10,10,5.03931,27.2734
10,v6.3,4096,4096,4096,10,10,8.16619,16.8302
10,cuBLAS,4096,4096,4096,10,10,5.05283,27.2004
10,v6.2,4096,4096,4096,10,10,7.96815,17.2485
11,cuBLAS,4096,4096,4096,10,10,5.08559,27.0252
11,v6.2,4096,4096,4096,10,10,7.93303,17.3249
11,v6.3,4096,4096,4096,10,10,8.18493,16.7917
0,v6.2,512,2048,1024,10,200,0.146847,14.624
0,v6.3,512,2048,1024,10,200,0.154081,13.9373
0,cuBLAS,512,2048,1024,10,200,0.107786,19.9235
1,v6.3,512,2048,1024,10,200,0.155213,13.8357
1,cuBLAS,512,2048,1024,10,200,0.10625,20.2116
1,v6.2,512,2048,1024,10,200,0.142126,15.1097
2,cuBLAS,512,2048,1024,10,200,0.10452,20.5462
2,v6.2,512,2048,1024,10,200,0.143626,14.9519
2,v6.3,512,2048,1024,10,200,0.156027,13.7635
3,v6.2,512,2048,1024,10,200,0.141839,15.1403
3,v6.3,512,2048,1024,10,200,0.156232,13.7455
3,cuBLAS,512,2048,1024,10,200,0.10644,20.1756
4,v6.3,512,2048,1024,10,200,0.15489,13.8646
4,cuBLAS,512,2048,1024,10,200,0.103347,20.7793
4,v6.2,512,2048,1024,10,200,0.143124,15.0043
5,cuBLAS,512,2048,1024,10,200,0.103117,20.8257
5,v6.2,512,2048,1024,10,200,0.146591,14.6495
5,v6.3,512,2048,1024,10,200,0.153748,13.9675
6,v6.2,512,2048,1024,10,200,0.142239,15.0977
6,v6.3,512,2048,1024,10,200,0.155008,13.854
6,cuBLAS,512,2048,1024,10,200,0.101816,21.0917
7,v6.3,512,2048,1024,10,200,0.15466,13.8852
7,cuBLAS,512,2048,1024,10,200,0.104525,20.5452
7,v6.2,512,2048,1024,10,200,0.145039,14.8062
8,cuBLAS,512,2048,1024,10,200,0.103004,20.8485
8,v6.2,512,2048,1024,10,200,0.145085,14.8015
8,v6.3,512,2048,1024,10,200,0.154895,13.8641
9,v6.2,512,2048,1024,10,200,0.143017,15.0156
9,v6.3,512,2048,1024,10,200,0.154895,13.8641
9,cuBLAS,512,2048,1024,10,200,0.106163,20.2281
10,v6.3,512,2048,1024,10,200,0.154629,13.888
10,cuBLAS,512,2048,1024,10,200,0.105216,20.4102
10,v6.2,512,2048,1024,10,200,0.144364,14.8755
11,cuBLAS,512,2048,1024,10,200,0.105482,20.3587
11,v6.2,512,2048,1024,10,200,0.144998,14.8104
11,v6.3,512,2048,1024,10,200,0.156211,13.7473
0,v6.2,2048,512,1024,10,200,0.146355,14.6731
0,v6.3,2048,512,1024,10,200,0.165545,12.9722
0,cuBLAS,2048,512,1024,10,200,0.111135,19.3232
1,v6.3,2048,512,1024,10,200,0.16534,12.9883
1,cuBLAS,2048,512,1024,10,200,0.107581,19.9615
1,v6.2,2048,512,1024,10,200,0.143191,14.9973
2,cuBLAS,2048,512,1024,10,200,0.113398,18.9376
2,v6.2,2048,512,1024,10,200,0.142971,15.0204
2,v6.3,2048,512,1024,10,200,0.166257,12.9167
3,v6.2,2048,512,1024,10,200,0.143416,14.9738
3,v6.3,2048,512,1024,10,200,0.160379,13.3901
3,cuBLAS,2048,512,1024,10,200,0.105001,20.452
4,v6.3,2048,512,1024,10,200,0.154199,13.9267
4,cuBLAS,2048,512,1024,10,200,0.10238,20.9757
4,v6.2,2048,512,1024,10,200,0.133023,16.1437
5,cuBLAS,2048,512,1024,10,200,0.108242,19.8397
5,v6.2,2048,512,1024,10,200,0.133996,16.0265
5,v6.3,2048,512,1024,10,200,0.159181,13.4908
6,v6.2,2048,512,1024,10,200,0.134989,15.9086
6,v6.3,2048,512,1024,10,200,0.161106,13.3296
6,cuBLAS,2048,512,1024,10,200,0.10623,20.2155
7,v6.3,2048,512,1024,10,200,0.157169,13.6636
7,cuBLAS,2048,512,1024,10,200,0.105661,20.3242
7,v6.2,2048,512,1024,10,200,0.147794,14.5303
8,cuBLAS,2048,512,1024,10,200,0.105078,20.4371
8,v6.2,2048,512,1024,10,200,0.138322,15.5253
8,v6.3,2048,512,1024,10,200,0.158213,13.5734
9,v6.2,2048,512,1024,10,200,0.137876,15.5754
9,v6.3,2048,512,1024,10,200,0.158961,13.5095
9,cuBLAS,2048,512,1024,10,200,0.106911,20.0867
10,v6.3,2048,512,1024,10,200,0.157194,13.6613
10,cuBLAS,2048,512,1024,10,200,0.103572,20.7341
10,v6.2,2048,512,1024,10,200,0.144829,14.8277
11,cuBLAS,2048,512,1024,10,200,0.106004,20.2584
11,v6.2,2048,512,1024,10,200,0.136192,15.7681
11,v6.3,2048,512,1024,10,200,0.160138,13.4102
0,v6.2,1024,1024,64,10,200,0.0219136,6.12486
0,v6.3,1024,1024,64,10,200,0.0186778,7.18596
0,cuBLAS,1024,1024,64,10,200,0.0167014,8.0363
1,v6.3,1024,1024,64,10,200,0.0185549,7.23355
1,cuBLAS,1024,1024,64,10,200,0.0176174,7.61846
1,v6.2,1024,1024,64,10,200,0.0186112,7.21166
2,cuBLAS,1024,1024,64,10,200,0.0161946,8.28783
2,v6.2,1024,1024,64,10,200,0.0199629,6.72337
2,v6.3,1024,1024,64,10,200,0.0202803,6.61813
3,v6.2,1024,1024,64,10,200,0.0201882,6.64834
3,v6.3,1024,1024,64,10,200,0.0180275,7.44516
3,cuBLAS,1024,1024,64,10,200,0.0154931,8.66305
4,v6.3,1024,1024,64,10,200,0.0229069,5.85928
4,cuBLAS,1024,1024,64,10,200,0.021079,6.36736
4,v6.2,1024,1024,64,10,200,0.0186419,7.19978
5,cuBLAS,1024,1024,64,10,200,0.0159642,8.40744
5,v6.2,1024,1024,64,10,200,0.0189338,7.0888
5,v6.3,1024,1024,64,10,200,0.0191181,7.02046
6,v6.2,1024,1024,64,10,200,0.0189286,7.09072
6,v6.3,1024,1024,64,10,200,0.0187341,7.16436
6,cuBLAS,1024,1024,64,10,200,0.0189286,7.09072
7,v6.3,1024,1024,64,10,200,0.0256666,5.22928
7,cuBLAS,1024,1024,64,10,200,0.0168858,7.94858
7,v6.2,1024,1024,64,10,200,0.0192051,6.98864
8,cuBLAS,1024,1024,64,10,200,0.0149453,8.98061
8,v6.2,1024,1024,64,10,200,0.0190925,7.02987
8,v6.3,1024,1024,64,10,200,0.0189184,7.09456
9,v6.2,1024,1024,64,10,200,0.0191795,6.99797
9,v6.3,1024,1024,64,10,200,0.0182323,7.36153
9,cuBLAS,1024,1024,64,10,200,0.0154419,8.69178
10,v6.3,1024,1024,64,10,200,0.0187238,7.16828
10,cuBLAS,1024,1024,64,10,200,0.0188979,7.10225
10,v6.2,1024,1024,64,10,200,0.0197069,6.8107
11,cuBLAS,1024,1024,64,10,200,0.0156006,8.60335
11,v6.2,1024,1024,64,10,200,0.0198963,6.74586
11,v6.3,1024,1024,64,10,200,0.0195072,6.88042
0,v6.2,1023,1025,1007,10,200,0.198973,10.6136
0,v6.3,1023,1025,1007,10,200,0.184776,11.4292
0,cuBLAS,1023,1025,1007,10,200,0.163651,12.9045
1,v6.3,1023,1025,1007,10,200,0.182897,11.5466
1,cuBLAS,1023,1025,1007,10,200,0.162657,12.9833
1,v6.2,1023,1025,1007,10,200,0.197622,10.6862
2,cuBLAS,1023,1025,1007,10,200,0.165335,12.773
2,v6.2,1023,1025,1007,10,200,0.193623,10.9069
2,v6.3,1023,1025,1007,10,200,0.183388,11.5156
3,v6.2,1023,1025,1007,10,200,0.197161,10.7112
3,v6.3,1023,1025,1007,10,200,0.182764,11.555
3,cuBLAS,1023,1025,1007,10,200,0.1634,12.9243
4,v6.3,1023,1025,1007,10,200,0.183178,11.5288
4,cuBLAS,1023,1025,1007,10,200,0.162099,13.028
4,v6.2,1023,1025,1007,10,200,0.196306,10.7579
5,cuBLAS,1023,1025,1007,10,200,0.16171,13.0594
5,v6.2,1023,1025,1007,10,200,0.196188,10.7643
5,v6.3,1023,1025,1007,10,200,0.180582,11.6946
6,v6.2,1023,1025,1007,10,200,0.198139,10.6583
6,v6.3,1023,1025,1007,10,200,0.18196,11.606
6,cuBLAS,1023,1025,1007,10,200,0.159375,13.2507
7,v6.3,1023,1025,1007,10,200,0.182845,11.5498
7,cuBLAS,1023,1025,1007,10,200,0.162258,13.0153
7,v6.2,1023,1025,1007,10,200,0.197417,10.6973
8,cuBLAS,1023,1025,1007,10,200,0.161705,13.0598
8,v6.2,1023,1025,1007,10,200,0.195814,10.7849
8,v6.3,1023,1025,1007,10,200,0.185016,11.4143
9,v6.2,1023,1025,1007,10,200,0.204677,10.3179
9,v6.3,1023,1025,1007,10,200,0.194237,10.8724
9,cuBLAS,1023,1025,1007,10,200,0.170045,12.4192
10,v6.3,1023,1025,1007,10,200,0.188442,11.2068
10,cuBLAS,1023,1025,1007,10,200,0.168822,12.5092
10,v6.2,1023,1025,1007,10,200,0.207616,10.1718
11,cuBLAS,1023,1025,1007,10,200,0.16489,12.8075
11,v6.2,1023,1025,1007,10,200,0.204488,10.3274
11,v6.3,1023,1025,1007,10,200,0.189926,11.1192
````

## raw/v63_timing_1_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````

## raw/v63_timing_2.csv

SHA256：`efcde5bb5ff3175f62eb9149584c6cd3c5f9457495e0f4eed7ca1c5dfbdad2dd`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6.2,512,512,512,10,200,0.0260506,10.3044
0,v6.3,512,512,512,10,200,0.0312371,8.59348
0,cuBLAS,512,512,512,10,200,0.0278374,9.64296
1,v6.3,512,512,512,10,200,0.0294502,9.11488
1,cuBLAS,512,512,512,10,200,0.0308787,8.69322
1,v6.2,512,512,512,10,200,0.0255283,10.5152
2,cuBLAS,512,512,512,10,200,0.0263987,10.1685
2,v6.2,512,512,512,10,200,0.0256512,10.4648
2,v6.3,512,512,512,10,200,0.0325325,8.25131
3,v6.2,512,512,512,10,200,0.029271,9.17068
3,v6.3,512,512,512,10,200,0.0294963,9.10064
3,cuBLAS,512,512,512,10,200,0.0303462,8.84576
4,v6.3,512,512,512,10,200,0.0297472,9.02389
4,cuBLAS,512,512,512,10,200,0.0261427,10.2681
4,v6.2,512,512,512,10,200,0.025641,10.469
5,cuBLAS,512,512,512,10,200,0.0316262,8.48775
5,v6.2,512,512,512,10,200,0.025472,10.5385
5,v6.3,512,512,512,10,200,0.0325171,8.2552
6,v6.2,512,512,512,10,200,0.0245197,10.9478
6,v6.3,512,512,512,10,200,0.0318362,8.43178
6,cuBLAS,512,512,512,10,200,0.0255386,10.511
7,v6.3,512,512,512,10,200,0.0294656,9.11013
7,cuBLAS,512,512,512,10,200,0.0423629,6.33657
7,v6.2,512,512,512,10,200,0.0380723,7.05067
8,cuBLAS,512,512,512,10,200,0.0303258,8.85173
8,v6.2,512,512,512,10,200,0.0255027,10.5258
8,v6.3,512,512,512,10,200,0.0317594,8.45217
9,v6.2,512,512,512,10,200,0.026071,10.2963
9,v6.3,512,512,512,10,200,0.0301568,8.90132
9,cuBLAS,512,512,512,10,200,0.0248576,10.7989
10,v6.3,512,512,512,10,200,0.0328397,8.17412
10,cuBLAS,512,512,512,10,200,0.0290509,9.24018
10,v6.2,512,512,512,10,200,0.0267162,10.0477
11,cuBLAS,512,512,512,10,200,0.0259789,10.3328
11,v6.2,512,512,512,10,200,0.028887,9.29259
11,v6.3,512,512,512,10,200,0.0308019,8.71489
0,v6.2,1024,1024,1024,10,200,0.159754,13.4424
0,v6.3,1024,1024,1024,10,200,0.165161,13.0024
0,cuBLAS,1024,1024,1024,10,200,0.161889,13.2651
1,v6.3,1024,1024,1024,10,200,0.161551,13.2929
1,cuBLAS,1024,1024,1024,10,200,0.16279,13.1917
1,v6.2,1024,1024,1024,10,200,0.162186,13.2409
2,cuBLAS,1024,1024,1024,10,200,0.167982,12.784
2,v6.2,1024,1024,1024,10,200,0.162068,13.2505
2,v6.3,1024,1024,1024,10,200,0.167322,12.8345
3,v6.2,1024,1024,1024,10,200,0.144881,14.8224
3,v6.3,1024,1024,1024,10,200,0.165734,12.9574
3,cuBLAS,1024,1024,1024,10,200,0.161797,13.2727
4,v6.3,1024,1024,1024,10,200,0.162749,13.195
4,cuBLAS,1024,1024,1024,10,200,0.161766,13.2752
4,v6.2,1024,1024,1024,10,200,0.163748,13.1146
5,cuBLAS,1024,1024,1024,10,200,0.16341,13.1417
5,v6.2,1024,1024,1024,10,200,0.158403,13.5571
5,v6.3,1024,1024,1024,10,200,0.163645,13.1228
6,v6.2,1024,1024,1024,10,200,0.147149,14.594
6,v6.3,1024,1024,1024,10,200,0.164741,13.0355
6,cuBLAS,1024,1024,1024,10,200,0.159887,13.4312
7,v6.3,1024,1024,1024,10,200,0.160625,13.3696
7,cuBLAS,1024,1024,1024,10,200,0.16043,13.3858
7,v6.2,1024,1024,1024,10,200,0.147804,14.5293
8,cuBLAS,1024,1024,1024,10,200,0.161976,13.258
8,v6.2,1024,1024,1024,10,200,0.141245,15.2039
8,v6.3,1024,1024,1024,10,200,0.163743,13.115
9,v6.2,1024,1024,1024,10,200,0.140524,15.282
9,v6.3,1024,1024,1024,10,200,0.165678,12.9618
9,cuBLAS,1024,1024,1024,10,200,0.161521,13.2954
10,v6.3,1024,1024,1024,10,200,0.164106,13.0859
10,cuBLAS,1024,1024,1024,10,200,0.160451,13.3841
10,v6.2,1024,1024,1024,10,200,0.152515,14.0805
11,cuBLAS,1024,1024,1024,10,200,0.160645,13.3679
11,v6.2,1024,1024,1024,10,200,0.147021,14.6067
11,v6.3,1024,1024,1024,10,200,0.166697,12.8826
0,v6.2,2048,2048,2048,10,25,0.91177,18.8423
0,v6.3,2048,2048,2048,10,25,1.06541,16.1251
0,cuBLAS,2048,2048,2048,10,25,0.678461,25.3218
1,v6.3,2048,2048,2048,10,25,1.06738,16.0954
1,cuBLAS,2048,2048,2048,10,25,0.687964,24.972
1,v6.2,2048,2048,2048,10,25,0.894648,19.2029
2,cuBLAS,2048,2048,2048,10,25,0.705536,24.3501
2,v6.2,2048,2048,2048,10,25,0.889487,19.3143
2,v6.3,2048,2048,2048,10,25,1.065,16.1313
3,v6.2,2048,2048,2048,10,25,0.867369,19.8069
3,v6.3,2048,2048,2048,10,25,1.06197,16.1774
3,cuBLAS,2048,2048,2048,10,25,0.676127,25.4092
4,v6.3,2048,2048,2048,10,25,1.04452,16.4476
4,cuBLAS,2048,2048,2048,10,25,0.677929,25.3417
4,v6.2,2048,2048,2048,10,25,0.895509,19.1845
5,cuBLAS,2048,2048,2048,10,25,0.715735,24.0031
5,v6.2,2048,2048,2048,10,25,0.890225,19.2984
5,v6.3,2048,2048,2048,10,25,1.07033,16.0511
6,v6.2,2048,2048,2048,10,25,0.90538,18.9753
6,v6.3,2048,2048,2048,10,25,1.07127,16.037
6,cuBLAS,2048,2048,2048,10,25,0.686162,25.0376
7,v6.3,2048,2048,2048,10,25,1.04649,16.4167
7,cuBLAS,2048,2048,2048,10,25,0.658104,26.1051
7,v6.2,2048,2048,2048,10,25,0.87892,19.5466
8,cuBLAS,2048,2048,2048,10,25,0.734577,23.3874
8,v6.2,2048,2048,2048,10,25,0.912957,18.8178
8,v6.3,2048,2048,2048,10,25,1.10457,15.5535
9,v6.2,2048,2048,2048,10,25,0.882852,19.4595
9,v6.3,2048,2048,2048,10,25,1.06861,16.0769
9,cuBLAS,2048,2048,2048,10,25,0.685261,25.0706
10,v6.3,2048,2048,2048,10,25,1.0419,16.489
10,cuBLAS,2048,2048,2048,10,25,0.677806,25.3463
10,v6.2,2048,2048,2048,10,25,0.892436,19.2505
11,cuBLAS,2048,2048,2048,10,25,0.705946,24.336
11,v6.2,2048,2048,2048,10,25,0.899932,19.0902
11,v6.3,2048,2048,2048,10,25,1.09441,15.6978
0,v6.2,4096,4096,4096,10,10,8.01331,17.1513
0,v6.3,4096,4096,4096,10,10,8.29594,16.567
0,cuBLAS,4096,4096,4096,10,10,5.08006,27.0546
1,v6.3,4096,4096,4096,10,10,8.15636,16.8505
1,cuBLAS,4096,4096,4096,10,10,5.03112,27.3178
1,v6.2,4096,4096,4096,10,10,7.94511,17.2986
2,cuBLAS,4096,4096,4096,10,10,5.02313,27.3612
2,v6.2,4096,4096,4096,10,10,7.99119,17.1988
2,v6.3,4096,4096,4096,10,10,8.2473,16.6647
3,v6.2,4096,4096,4096,10,10,7.90712,17.3817
3,v6.3,4096,4096,4096,10,10,8.22804,16.7037
3,cuBLAS,4096,4096,4096,10,10,5.06429,27.1388
4,v6.3,4096,4096,4096,10,10,8.21576,16.7287
4,cuBLAS,4096,4096,4096,10,10,5.03706,27.2856
4,v6.2,4096,4096,4096,10,10,7.96191,17.2621
5,cuBLAS,4096,4096,4096,10,10,5.02651,27.3428
5,v6.2,4096,4096,4096,10,10,7.98618,17.2096
5,v6.3,4096,4096,4096,10,10,8.21187,16.7366
6,v6.2,4096,4096,4096,10,10,7.93405,17.3227
6,v6.3,4096,4096,4096,10,10,8.25498,16.6492
6,cuBLAS,4096,4096,4096,10,10,5.0646,27.1372
7,v6.3,4096,4096,4096,10,10,8.68659,15.822
7,cuBLAS,4096,4096,4096,10,10,5.39208,25.4891
7,v6.2,4096,4096,4096,10,10,8.56074,16.0546
8,cuBLAS,4096,4096,4096,10,10,5.44102,25.2598
8,v6.2,4096,4096,4096,10,10,8.22364,16.7127
8,v6.3,4096,4096,4096,10,10,8.38205,16.3968
9,v6.2,4096,4096,4096,10,10,8.23675,16.6861
9,v6.3,4096,4096,4096,10,10,8.40622,16.3497
9,cuBLAS,4096,4096,4096,10,10,5.22086,26.3249
10,v6.3,4096,4096,4096,10,10,8.31898,16.5211
10,cuBLAS,4096,4096,4096,10,10,5.16731,26.5978
10,v6.2,4096,4096,4096,10,10,7.99918,17.1816
11,cuBLAS,4096,4096,4096,10,10,5.11078,26.892
11,v6.2,4096,4096,4096,10,10,7.98894,17.2037
11,v6.3,4096,4096,4096,10,10,8.22385,16.7122
0,v6.2,512,2048,1024,10,200,0.141389,15.1885
0,v6.3,512,2048,1024,10,200,0.157906,13.5998
0,cuBLAS,512,2048,1024,10,200,0.105477,20.3597
1,v6.3,512,2048,1024,10,200,0.156375,13.7329
1,cuBLAS,512,2048,1024,10,200,0.106931,20.0829
1,v6.2,512,2048,1024,10,200,0.142228,15.0988
2,cuBLAS,512,2048,1024,10,200,0.103956,20.6575
2,v6.2,512,2048,1024,10,200,0.140677,15.2653
2,v6.3,512,2048,1024,10,200,0.158894,13.5152
3,v6.2,512,2048,1024,10,200,0.140457,15.2893
3,v6.3,512,2048,1024,10,200,0.160108,13.4128
3,cuBLAS,512,2048,1024,10,200,0.105421,20.3706
4,v6.3,512,2048,1024,10,200,0.157138,13.6662
4,cuBLAS,512,2048,1024,10,200,0.104975,20.457
4,v6.2,512,2048,1024,10,200,0.143462,14.969
5,cuBLAS,512,2048,1024,10,200,0.104525,20.5452
5,v6.2,512,2048,1024,10,200,0.143667,14.9476
5,v6.3,512,2048,1024,10,200,0.155075,13.8481
6,v6.2,512,2048,1024,10,200,0.141594,15.1665
6,v6.3,512,2048,1024,10,200,0.155489,13.8111
6,cuBLAS,512,2048,1024,10,200,0.106424,20.1785
7,v6.3,512,2048,1024,10,200,0.154639,13.887
7,cuBLAS,512,2048,1024,10,200,0.105011,20.45
7,v6.2,512,2048,1024,10,200,0.140426,15.2926
8,cuBLAS,512,2048,1024,10,200,0.1056,20.336
8,v6.2,512,2048,1024,10,200,0.146678,14.6408
8,v6.3,512,2048,1024,10,200,0.156621,13.7114
9,v6.2,512,2048,1024,10,200,0.140303,15.306
9,v6.3,512,2048,1024,10,200,0.156247,13.7442
9,cuBLAS,512,2048,1024,10,200,0.10178,21.0992
10,v6.3,512,2048,1024,10,200,0.157993,13.5923
10,cuBLAS,512,2048,1024,10,200,0.105252,20.4033
10,v6.2,512,2048,1024,10,200,0.143421,14.9732
11,cuBLAS,512,2048,1024,10,200,0.104991,20.454
11,v6.2,512,2048,1024,10,200,0.143048,15.0124
11,v6.3,512,2048,1024,10,200,0.154675,13.8838
0,v6.2,2048,512,1024,10,200,0.133294,16.1109
0,v6.3,2048,512,1024,10,200,0.156652,13.7087
0,cuBLAS,2048,512,1024,10,200,0.10239,20.9736
1,v6.3,2048,512,1024,10,200,0.152663,14.0668
1,cuBLAS,2048,512,1024,10,200,0.103137,20.8216
1,v6.2,2048,512,1024,10,200,0.137405,15.6288
2,cuBLAS,2048,512,1024,10,200,0.107965,19.8905
2,v6.2,2048,512,1024,10,200,0.143386,14.977
2,v6.3,2048,512,1024,10,200,0.165642,12.9646
3,v6.2,2048,512,1024,10,200,0.142356,15.0853
3,v6.3,2048,512,1024,10,200,0.165827,12.9502
3,cuBLAS,2048,512,1024,10,200,0.116434,18.4438
4,v6.3,2048,512,1024,10,200,0.162621,13.2054
4,cuBLAS,2048,512,1024,10,200,0.110172,19.4921
4,v6.2,2048,512,1024,10,200,0.154404,13.9082
5,cuBLAS,2048,512,1024,10,200,0.109455,19.6197
5,v6.2,2048,512,1024,10,200,0.143508,14.9642
5,v6.3,2048,512,1024,10,200,0.16212,13.2463
6,v6.2,2048,512,1024,10,200,0.143237,14.9925
6,v6.3,2048,512,1024,10,200,0.166118,12.9274
6,cuBLAS,2048,512,1024,10,200,0.110495,19.4352
7,v6.3,2048,512,1024,10,200,0.163118,13.1652
7,cuBLAS,2048,512,1024,10,200,0.110147,19.4966
7,v6.2,2048,512,1024,10,200,0.157133,13.6667
8,cuBLAS,2048,512,1024,10,200,0.111427,19.2726
8,v6.2,2048,512,1024,10,200,0.150047,14.3121
8,v6.3,2048,512,1024,10,200,0.159053,13.5017
9,v6.2,2048,512,1024,10,200,0.140063,15.3323
9,v6.3,2048,512,1024,10,200,0.156104,13.7568
9,cuBLAS,2048,512,1024,10,200,0.104253,20.5987
10,v6.3,2048,512,1024,10,200,0.159314,13.4796
10,cuBLAS,2048,512,1024,10,200,0.105969,20.2653
10,v6.2,2048,512,1024,10,200,0.14294,15.0237
11,cuBLAS,2048,512,1024,10,200,0.106772,20.1127
11,v6.2,2048,512,1024,10,200,0.137815,15.5824
11,v6.3,2048,512,1024,10,200,0.160113,13.4123
0,v6.2,1024,1024,64,10,200,0.0211302,6.35193
0,v6.3,1024,1024,64,10,200,0.0191232,7.01858
0,cuBLAS,1024,1024,64,10,200,0.0166656,8.05358
1,v6.3,1024,1024,64,10,200,0.0189286,7.09072
1,cuBLAS,1024,1024,64,10,200,0.0229222,5.85535
1,v6.2,1024,1024,64,10,200,0.0200243,6.70274
2,cuBLAS,1024,1024,64,10,200,0.0160358,8.36986
2,v6.2,1024,1024,64,10,200,0.0193997,6.91855
2,v6.3,1024,1024,64,10,200,0.0228966,5.8619
3,v6.2,1024,1024,64,10,200,0.0205568,6.52912
3,v6.3,1024,1024,64,10,200,0.0209459,6.40782
3,cuBLAS,1024,1024,64,10,200,0.021888,6.13202
4,v6.3,1024,1024,64,10,200,0.019584,6.85344
4,cuBLAS,1024,1024,64,10,200,0.0162867,8.24093
4,v6.2,1024,1024,64,10,200,0.018816,7.13317
5,cuBLAS,1024,1024,64,10,200,0.0154522,8.68602
5,v6.2,1024,1024,64,10,200,0.0188723,7.11188
5,v6.3,1024,1024,64,10,200,0.0197683,6.78954
6,v6.2,1024,1024,64,10,200,0.0197581,6.79305
6,v6.3,1024,1024,64,10,200,0.018688,7.18203
6,cuBLAS,1024,1024,64,10,200,0.0173261,7.74657
7,v6.3,1024,1024,64,10,200,0.0230912,5.81251
7,cuBLAS,1024,1024,64,10,200,0.0151142,8.88022
7,v6.2,1024,1024,64,10,200,0.0192358,6.97748
8,cuBLAS,1024,1024,64,10,200,0.0150989,8.88925
8,v6.2,1024,1024,64,10,200,0.0245094,5.47616
8,v6.3,1024,1024,64,10,200,0.0213248,6.29397
9,v6.2,1024,1024,64,10,200,0.0188365,7.12541
9,v6.3,1024,1024,64,10,200,0.023081,5.81508
9,cuBLAS,1024,1024,64,10,200,0.0198042,6.77725
10,v6.3,1024,1024,64,10,200,0.0188518,7.11961
10,cuBLAS,1024,1024,64,10,200,0.0156723,8.564
10,v6.2,1024,1024,64,10,200,0.0187085,7.17417
11,cuBLAS,1024,1024,64,10,200,0.0167168,8.02891
11,v6.2,1024,1024,64,10,200,0.0238848,5.61938
11,v6.3,1024,1024,64,10,200,0.0193024,6.95342
0,v6.2,1023,1025,1007,10,200,0.201702,10.47
0,v6.3,1023,1025,1007,10,200,0.18133,11.6463
0,cuBLAS,1023,1025,1007,10,200,0.169943,12.4267
1,v6.3,1023,1025,1007,10,200,0.182892,11.5469
1,cuBLAS,1023,1025,1007,10,200,0.161946,13.0404
1,v6.2,1023,1025,1007,10,200,0.197949,10.6685
2,cuBLAS,1023,1025,1007,10,200,0.162268,13.0144
2,v6.2,1023,1025,1007,10,200,0.196086,10.7699
2,v6.3,1023,1025,1007,10,200,0.184607,11.4396
3,v6.2,1023,1025,1007,10,200,0.201708,10.4698
3,v6.3,1023,1025,1007,10,200,0.182282,11.5855
3,cuBLAS,1023,1025,1007,10,200,0.162698,12.98
4,v6.3,1023,1025,1007,10,200,0.192625,10.9634
4,cuBLAS,1023,1025,1007,10,200,0.168576,12.5275
4,v6.2,1023,1025,1007,10,200,0.206044,10.2494
5,cuBLAS,1023,1025,1007,10,200,0.168212,12.5545
5,v6.2,1023,1025,1007,10,200,0.207667,10.1693
5,v6.3,1023,1025,1007,10,200,0.19156,11.0244
6,v6.2,1023,1025,1007,10,200,0.20885,10.1117
6,v6.3,1023,1025,1007,10,200,0.19308,10.9376
6,cuBLAS,1023,1025,1007,10,200,0.170568,12.3812
7,v6.3,1023,1025,1007,10,200,0.192154,10.9903
7,cuBLAS,1023,1025,1007,10,200,0.169032,12.4937
7,v6.2,1023,1025,1007,10,200,0.204646,10.3194
8,cuBLAS,1023,1025,1007,10,200,0.177905,11.8706
8,v6.2,1023,1025,1007,10,200,0.207437,10.1806
8,v6.3,1023,1025,1007,10,200,0.19755,10.6901
9,v6.2,1023,1025,1007,10,200,0.214656,9.83821
9,v6.3,1023,1025,1007,10,200,0.194458,10.8601
9,cuBLAS,1023,1025,1007,10,200,0.179722,11.7505
10,v6.3,1023,1025,1007,10,200,0.189824,11.1252
10,cuBLAS,1023,1025,1007,10,200,0.170322,12.399
10,v6.2,1023,1025,1007,10,200,0.20482,10.3106
11,cuBLAS,1023,1025,1007,10,200,0.167588,12.6013
11,v6.2,1023,1025,1007,10,200,0.216064,9.7741
11,v6.3,1023,1025,1007,10,200,0.191258,11.0418
````

## raw/v63_timing_2_checks.log

SHA256：`f2a7265e45f203522823ebc3fd7e841e30e3ed56115c545e81880776aef71998`

````text
check,v6.2,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,512,512,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,2048,2048,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,4096,4096,4096,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,v6.3,512,2048,1024,full_cublas_different=768,cpu_bad=0,cpu256_different=0
check,cuBLAS,512,2048,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,2048,512,1024,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.3,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,cuBLAS,1024,1024,64,full_cublas_different=0,cpu_bad=0,cpu256_different=0
check,v6.2,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,v6.3,1023,1025,1007,full_cublas_different=45,cpu_bad=0,cpu256_different=0
check,cuBLAS,1023,1025,1007,full_cublas_different=0,cpu_bad=0,cpu256_different=0
````
