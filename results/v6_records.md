# v6 原始文本记录

整理日期：2026-11-05。本文件整理已有执行记录，未重新运行实验。每节保留原文件名与内容，展示时仅去除行尾空白；SHA256 对应本地原始文件。失败尝试和最终结果均保留，解释见对应分析报告。原始 Profile、完整指标 CSV、SASS 与源码快照已解包保留本地；位置规则见 [结果索引](README.md)。

## raw/v6_bench_0.csv

SHA256：`9ba6c676f0ddd65672c8340c31a2b92532bda2e88e7376fcea4e25e58abc02b0`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.542254,3.96029
0,v5.2,1024,1024,1024,20,200,0.538537,3.98763
0,v6,1024,1024,1024,20,200,0.486303,4.41594
0,cuBLAS,1024,1024,1024,20,200,0.165955,12.9402
1,v5.2,1024,1024,1024,20,200,0.525742,4.08467
1,v6,1024,1024,1024,20,200,0.482048,4.45492
1,cuBLAS,1024,1024,1024,20,200,0.163441,13.1392
1,v4,1024,1024,1024,20,200,0.663844,3.23492
2,v6,1024,1024,1024,20,200,0.593106,3.62074
2,cuBLAS,1024,1024,1024,20,200,0.168868,12.7169
2,v4,1024,1024,1024,20,200,0.547451,3.9227
2,v5.2,1024,1024,1024,20,200,0.539203,3.9827
3,cuBLAS,1024,1024,1024,20,200,0.185774,11.5597
3,v4,1024,1024,1024,20,200,0.545654,3.93562
3,v5.2,1024,1024,1024,20,200,0.60587,3.54446
3,v6,1024,1024,1024,20,200,0.548649,3.91413
4,v4,1024,1024,1024,20,200,0.609654,3.52246
4,v5.2,1024,1024,1024,20,200,0.542915,3.95547
4,v6,1024,1024,1024,20,200,0.486984,4.40977
4,cuBLAS,1024,1024,1024,20,200,0.162463,13.2183
5,v5.2,1024,1024,1024,20,200,0.541322,3.96711
5,v6,1024,1024,1024,20,200,0.520632,4.12476
5,cuBLAS,1024,1024,1024,20,200,0.175268,12.2526
5,v4,1024,1024,1024,20,200,0.566323,3.79198
6,v6,1024,1024,1024,20,200,0.51351,4.18197
6,cuBLAS,1024,1024,1024,20,200,0.179446,11.9673
6,v4,1024,1024,1024,20,200,0.541911,3.9628
6,v5.2,1024,1024,1024,20,200,0.562493,3.81779
7,cuBLAS,1024,1024,1024,20,200,0.166492,12.8984
7,v4,1024,1024,1024,20,200,0.557297,3.85339
7,v5.2,1024,1024,1024,20,200,0.538957,3.98452
7,v6,1024,1024,1024,20,200,0.497987,4.31233
8,v4,1024,1024,1024,20,200,0.546944,3.92633
8,v5.2,1024,1024,1024,20,200,0.641684,3.34663
8,v6,1024,1024,1024,20,200,0.482898,4.44708
8,cuBLAS,1024,1024,1024,20,200,0.163092,13.1673
9,v5.2,1024,1024,1024,20,200,0.541983,3.96227
9,v6,1024,1024,1024,20,200,0.488131,4.3994
9,cuBLAS,1024,1024,1024,20,200,0.164306,13.07
9,v4,1024,1024,1024,20,200,0.555443,3.86625
10,v6,1024,1024,1024,20,200,0.498284,4.30976
10,cuBLAS,1024,1024,1024,20,200,0.166589,12.8909
10,v4,1024,1024,1024,20,200,0.553989,3.8764
10,v5.2,1024,1024,1024,20,200,0.536622,4.00185
11,cuBLAS,1024,1024,1024,20,200,0.162857,13.1863
11,v4,1024,1024,1024,20,200,0.5344,4.01849
11,v5.2,1024,1024,1024,20,200,0.54379,3.9491
11,v6,1024,1024,1024,20,200,0.492867,4.35713
````

## raw/v6_bench_1.csv

SHA256：`b38d4b59493db30c035897922281dddd30d92ea645755489334418592c96ee06`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.532306,4.0343
0,v5.2,1024,1024,1024,20,200,0.533443,4.02571
0,v6,1024,1024,1024,20,200,0.487634,4.40388
0,cuBLAS,1024,1024,1024,20,200,0.163205,13.1582
1,v5.2,1024,1024,1024,20,200,0.531584,4.03978
1,v6,1024,1024,1024,20,200,0.491244,4.37153
1,cuBLAS,1024,1024,1024,20,200,0.177403,12.1051
1,v4,1024,1024,1024,20,200,0.527898,4.06799
2,v6,1024,1024,1024,20,200,0.514381,4.17489
2,cuBLAS,1024,1024,1024,20,200,0.162862,13.1859
2,v4,1024,1024,1024,20,200,0.531942,4.03706
2,v5.2,1024,1024,1024,20,200,0.532506,4.03279
3,cuBLAS,1024,1024,1024,20,200,0.158316,13.5646
3,v4,1024,1024,1024,20,200,0.528553,4.06295
3,v5.2,1024,1024,1024,20,200,0.542203,3.96066
3,v6,1024,1024,1024,20,200,0.495882,4.33063
4,v4,1024,1024,1024,20,200,0.538122,3.9907
4,v5.2,1024,1024,1024,20,200,0.531702,4.03889
4,v6,1024,1024,1024,20,200,0.500721,4.28879
4,cuBLAS,1024,1024,1024,20,200,0.173425,12.3828
5,v5.2,1024,1024,1024,20,200,0.532234,4.03485
5,v6,1024,1024,1024,20,200,0.491151,4.37235
5,cuBLAS,1024,1024,1024,20,200,0.162662,13.2021
5,v4,1024,1024,1024,20,200,0.527534,4.0708
6,v6,1024,1024,1024,20,200,0.489646,4.38579
6,cuBLAS,1024,1024,1024,20,200,0.16386,13.1056
6,v4,1024,1024,1024,20,200,0.528241,4.06535
6,v5.2,1024,1024,1024,20,200,0.54208,3.96156
7,cuBLAS,1024,1024,1024,20,200,0.15678,13.6975
7,v4,1024,1024,1024,20,200,0.528502,4.06334
7,v5.2,1024,1024,1024,20,200,0.565263,3.79908
7,v6,1024,1024,1024,20,200,0.500506,4.29063
8,v4,1024,1024,1024,20,200,0.554522,3.87268
8,v5.2,1024,1024,1024,20,200,0.556821,3.85669
8,v6,1024,1024,1024,20,200,0.519552,4.13334
8,cuBLAS,1024,1024,1024,20,200,0.170742,12.5774
9,v5.2,1024,1024,1024,20,200,0.574003,3.74124
9,v6,1024,1024,1024,20,200,0.525757,4.08455
9,cuBLAS,1024,1024,1024,20,200,0.176287,12.1818
9,v4,1024,1024,1024,20,200,0.548762,3.91333
10,v6,1024,1024,1024,20,200,0.492713,4.35849
10,cuBLAS,1024,1024,1024,20,200,0.166344,12.9099
10,v4,1024,1024,1024,20,200,0.535588,4.00958
10,v5.2,1024,1024,1024,20,200,0.530289,4.04965
11,cuBLAS,1024,1024,1024,20,200,0.158884,13.5161
11,v4,1024,1024,1024,20,200,0.531062,4.04375
11,v5.2,1024,1024,1024,20,200,0.532352,4.03395
11,v6,1024,1024,1024,20,200,0.49301,4.35586
````

## raw/v6_bench_2.csv

SHA256：`8163169c11f9d177cebaa6f2d5a34d6622ebd1581d1d125207a59a9fb23143d6`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.572093,3.75373
0,v5.2,1024,1024,1024,20,200,0.563733,3.8094
0,v6,1024,1024,1024,20,200,0.51393,4.17855
0,cuBLAS,1024,1024,1024,20,200,0.171351,12.5327
1,v5.2,1024,1024,1024,20,200,0.549279,3.90964
1,v6,1024,1024,1024,20,200,0.489149,4.39024
1,cuBLAS,1024,1024,1024,20,200,0.163343,13.1471
1,v4,1024,1024,1024,20,200,0.528394,4.06417
2,v6,1024,1024,1024,20,200,0.508339,4.22451
2,cuBLAS,1024,1024,1024,20,200,0.166031,12.9342
2,v4,1024,1024,1024,20,200,0.533868,4.0225
2,v5.2,1024,1024,1024,20,200,0.537605,3.99454
3,cuBLAS,1024,1024,1024,20,200,0.160845,13.3513
3,v4,1024,1024,1024,20,200,0.538271,3.9896
3,v5.2,1024,1024,1024,20,200,0.532439,4.03329
3,v6,1024,1024,1024,20,200,0.491955,4.3652
4,v4,1024,1024,1024,20,200,0.544635,3.94298
4,v5.2,1024,1024,1024,20,200,0.541706,3.9643
4,v6,1024,1024,1024,20,200,0.503235,4.26736
4,cuBLAS,1024,1024,1024,20,200,0.163328,13.1483
5,v5.2,1024,1024,1024,20,200,0.539715,3.97892
5,v6,1024,1024,1024,20,200,0.49771,4.31473
5,cuBLAS,1024,1024,1024,20,200,0.166405,12.9052
5,v4,1024,1024,1024,20,200,0.535014,4.01388
6,v6,1024,1024,1024,20,200,0.493635,4.35035
6,cuBLAS,1024,1024,1024,20,200,0.170573,12.5898
6,v4,1024,1024,1024,20,200,0.534707,4.01619
6,v5.2,1024,1024,1024,20,200,0.538086,3.99096
7,cuBLAS,1024,1024,1024,20,200,0.162586,13.2083
7,v4,1024,1024,1024,20,200,0.543846,3.9487
7,v5.2,1024,1024,1024,20,200,0.535823,4.00782
7,v6,1024,1024,1024,20,200,0.498555,4.30742
8,v4,1024,1024,1024,20,200,0.540339,3.97432
8,v5.2,1024,1024,1024,20,200,0.625935,3.43084
8,v6,1024,1024,1024,20,200,0.485652,4.42185
8,cuBLAS,1024,1024,1024,20,200,0.165376,12.9855
9,v5.2,1024,1024,1024,20,200,0.537754,3.99343
9,v6,1024,1024,1024,20,200,0.513459,4.18238
9,cuBLAS,1024,1024,1024,20,200,0.165801,12.9522
9,v4,1024,1024,1024,20,200,0.541199,3.96801
10,v6,1024,1024,1024,20,200,0.524554,4.09392
10,cuBLAS,1024,1024,1024,20,200,0.176543,12.1641
10,v4,1024,1024,1024,20,200,0.564014,3.8075
10,v5.2,1024,1024,1024,20,200,0.574438,3.73841
11,cuBLAS,1024,1024,1024,20,200,0.173614,12.3693
11,v4,1024,1024,1024,20,200,0.578273,3.71361
11,v5.2,1024,1024,1024,20,200,0.536049,4.00614
11,v6,1024,1024,1024,20,200,0.487009,4.40953
````

## raw/v6_build.log

SHA256：`300f42da02bab28704f2810136cc870dc99b33c13f4e3e79953ae7c9f0aea75c`

````text
[  9%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
[ 18%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v0.cu.o
[ 36%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v1.cu.o
[ 36%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v2.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v1_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Compiling entry function '_Z15hgemm_v0_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v1_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Function properties for _Z15hgemm_v0_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 35 registers, used 1 barriers, 1024 bytes smem, 388 bytes cmem[0]
ptxas info    : Used 26 registers, used 0 barriers, 388 bytes cmem[0]
ptxas info    : Compile time = 23.966 ms
ptxas info    : Compile time = 24.456 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v2_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v2_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 40 registers, used 1 barriers, 2048 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 23.354 ms
[ 54%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5.cu.o
[ 54%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v4.cu.o
[ 63%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v3.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 60 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 34.378 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v3_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v3_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 43 registers, used 1 barriers, 4608 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 25.752 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 29.865 ms
[ 72%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_1.cu.o
[ 81%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6.cu.o
[ 90%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_2.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 65 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 33.133 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 29.442 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 50 registers, used 1 barriers, 6144 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 22.255 ms
[100%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v6_configure.log

SHA256：`ca0f4a4fffb604024b71072178516f98e1db243a2b029c4023a0f8b526111cd9`

````text
-- Configuring done (5.8s)
-- Generating done (0.0s)
-- Build files have been written to: /home/xu/projects/HGEMM-CUDA/build
````

## raw/v6_final_bench_0.csv

SHA256：`c0467b1b6377438911754074266ee765cbbdeb990b9b237b66dbada5f7591f4b`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.528865,4.06055
0,v5.2,1024,1024,1024,20,200,0.539955,3.97715
0,v6,1024,1024,1024,20,200,0.344125,6.24041
0,cuBLAS,1024,1024,1024,20,200,0.156626,13.7109
1,v5.2,1024,1024,1024,20,200,0.53312,4.02814
1,v6,1024,1024,1024,20,200,0.343404,6.25353
1,cuBLAS,1024,1024,1024,20,200,0.157962,13.5949
1,v4,1024,1024,1024,20,200,0.525512,4.08646
2,v6,1024,1024,1024,20,200,0.344504,6.23355
2,cuBLAS,1024,1024,1024,20,200,0.157189,13.6618
2,v4,1024,1024,1024,20,200,0.527723,4.06933
2,v5.2,1024,1024,1024,20,200,0.531942,4.03706
3,cuBLAS,1024,1024,1024,20,200,0.162386,13.2246
3,v4,1024,1024,1024,20,200,0.538015,3.9915
3,v5.2,1024,1024,1024,20,200,0.526438,4.07927
3,v6,1024,1024,1024,20,200,0.340378,6.30912
4,v4,1024,1024,1024,20,200,0.534205,4.01996
4,v5.2,1024,1024,1024,20,200,0.530893,4.04504
4,v6,1024,1024,1024,20,200,0.36671,5.85609
4,cuBLAS,1024,1024,1024,20,200,0.164526,13.0525
5,v5.2,1024,1024,1024,20,200,0.560092,3.83416
5,v6,1024,1024,1024,20,200,0.366633,5.85731
5,cuBLAS,1024,1024,1024,20,200,0.168387,12.7533
5,v4,1024,1024,1024,20,200,0.56514,3.79991
6,v6,1024,1024,1024,20,200,0.352343,6.09487
6,cuBLAS,1024,1024,1024,20,200,0.173901,12.3489
6,v4,1024,1024,1024,20,200,0.563139,3.81342
6,v5.2,1024,1024,1024,20,200,0.569452,3.77114
7,cuBLAS,1024,1024,1024,20,200,0.176189,12.1885
7,v4,1024,1024,1024,20,200,0.533007,4.02899
7,v5.2,1024,1024,1024,20,200,0.54847,3.91541
7,v6,1024,1024,1024,20,200,0.34324,6.25651
8,v4,1024,1024,1024,20,200,0.54229,3.96003
8,v5.2,1024,1024,1024,20,200,0.529167,4.05823
8,v6,1024,1024,1024,20,200,0.342349,6.27279
8,cuBLAS,1024,1024,1024,20,200,0.159411,13.4713
9,v5.2,1024,1024,1024,20,200,0.642724,3.34122
9,v6,1024,1024,1024,20,200,0.340531,6.30628
9,cuBLAS,1024,1024,1024,20,200,0.158244,13.5707
9,v4,1024,1024,1024,20,200,0.528968,4.05976
10,v6,1024,1024,1024,20,200,0.347991,6.17109
10,cuBLAS,1024,1024,1024,20,200,0.157957,13.5954
10,v4,1024,1024,1024,20,200,0.527836,4.06847
10,v5.2,1024,1024,1024,20,200,0.531866,4.03764
11,cuBLAS,1024,1024,1024,20,200,0.162934,13.1801
11,v4,1024,1024,1024,20,200,0.5359,4.00725
11,v5.2,1024,1024,1024,20,200,0.537923,3.99218
11,v6,1024,1024,1024,20,200,0.350244,6.1314
````

## raw/v6_final_bench_1.csv

SHA256：`4ef0749ef6929568c4242deeac1b579ca2ecfa48dc2af68d3a3f7cbb7c8427cd`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.532736,4.03105
0,v5.2,1024,1024,1024,20,200,0.533069,4.02853
0,v6,1024,1024,1024,20,200,0.34324,6.25651
0,cuBLAS,1024,1024,1024,20,200,0.158925,13.5126
1,v5.2,1024,1024,1024,20,200,0.533898,4.02227
1,v6,1024,1024,1024,20,200,0.344453,6.23447
1,cuBLAS,1024,1024,1024,20,200,0.164045,13.0908
1,v4,1024,1024,1024,20,200,0.534943,4.01442
2,v6,1024,1024,1024,20,200,0.341156,6.29473
2,cuBLAS,1024,1024,1024,20,200,0.157798,13.609
2,v4,1024,1024,1024,20,200,0.532096,4.0359
2,v5.2,1024,1024,1024,20,200,0.532521,4.03267
3,cuBLAS,1024,1024,1024,20,200,0.161843,13.2689
3,v4,1024,1024,1024,20,200,0.534605,4.01696
3,v5.2,1024,1024,1024,20,200,0.5329,4.02981
3,v6,1024,1024,1024,20,200,0.345759,6.21093
4,v4,1024,1024,1024,20,200,0.544,3.94758
4,v5.2,1024,1024,1024,20,200,0.541338,3.967
4,v6,1024,1024,1024,20,200,0.343055,6.25988
4,cuBLAS,1024,1024,1024,20,200,0.156718,13.7028
5,v5.2,1024,1024,1024,20,200,0.528456,4.0637
5,v6,1024,1024,1024,20,200,0.345426,6.21692
5,cuBLAS,1024,1024,1024,20,200,0.165289,12.9923
5,v4,1024,1024,1024,20,200,0.531041,4.04391
6,v6,1024,1024,1024,20,200,0.341878,6.28144
6,cuBLAS,1024,1024,1024,20,200,0.155955,13.7699
6,v4,1024,1024,1024,20,200,0.532091,4.03593
6,v5.2,1024,1024,1024,20,200,0.534308,4.01919
7,cuBLAS,1024,1024,1024,20,200,0.155689,13.7934
7,v4,1024,1024,1024,20,200,0.541164,3.96827
7,v5.2,1024,1024,1024,20,200,0.54038,3.97402
7,v6,1024,1024,1024,20,200,0.343639,6.24924
8,v4,1024,1024,1024,20,200,0.533565,4.02478
8,v5.2,1024,1024,1024,20,200,0.534574,4.01719
8,v6,1024,1024,1024,20,200,0.367555,5.84263
8,cuBLAS,1024,1024,1024,20,200,0.171535,12.5192
9,v5.2,1024,1024,1024,20,200,0.562376,3.81859
9,v6,1024,1024,1024,20,200,0.365455,5.87619
9,cuBLAS,1024,1024,1024,20,200,0.16492,13.0213
9,v4,1024,1024,1024,20,200,0.572211,3.75296
10,v6,1024,1024,1024,20,200,0.380974,5.63682
10,cuBLAS,1024,1024,1024,20,200,0.172524,12.4475
10,v4,1024,1024,1024,20,200,0.575903,3.7289
10,v5.2,1024,1024,1024,20,200,0.562217,3.81967
11,cuBLAS,1024,1024,1024,20,200,0.16108,13.3318
11,v4,1024,1024,1024,20,200,0.53418,4.02015
11,v5.2,1024,1024,1024,20,200,0.526111,4.08181
11,v6,1024,1024,1024,20,200,0.345743,6.21121
````

## raw/v6_final_bench_2.csv

SHA256：`a5c6efc06e6f9de9f704edc589f1bc949dcfe3c3bb371d79c2ab899f38a7eb06`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v4,1024,1024,1024,20,200,0.534369,4.01873
0,v5.2,1024,1024,1024,20,200,0.533002,4.02903
0,v6,1024,1024,1024,20,200,0.342113,6.27711
0,cuBLAS,1024,1024,1024,20,200,0.160384,13.3896
1,v5.2,1024,1024,1024,20,200,0.557814,3.84982
1,v6,1024,1024,1024,20,200,0.371671,5.77792
1,cuBLAS,1024,1024,1024,20,200,0.1662,12.9211
1,v4,1024,1024,1024,20,200,0.552745,3.88513
2,v6,1024,1024,1024,20,200,0.36863,5.82558
2,cuBLAS,1024,1024,1024,20,200,0.164296,13.0708
2,v4,1024,1024,1024,20,200,0.571484,3.75773
2,v5.2,1024,1024,1024,20,200,0.56619,3.79287
3,cuBLAS,1024,1024,1024,20,200,0.161797,13.2727
3,v4,1024,1024,1024,20,200,0.540252,3.97497
3,v5.2,1024,1024,1024,20,200,0.531246,4.04235
3,v6,1024,1024,1024,20,200,0.355231,6.04532
4,v4,1024,1024,1024,20,200,0.535747,4.00839
4,v5.2,1024,1024,1024,20,200,0.538839,3.98539
4,v6,1024,1024,1024,20,200,0.349041,6.15253
4,cuBLAS,1024,1024,1024,20,200,0.159084,13.4991
5,v5.2,1024,1024,1024,20,200,0.536996,3.99907
5,v6,1024,1024,1024,20,200,0.352374,6.09433
5,cuBLAS,1024,1024,1024,20,200,0.160819,13.3534
5,v4,1024,1024,1024,20,200,0.546007,3.93307
6,v6,1024,1024,1024,20,200,0.350633,6.12459
6,cuBLAS,1024,1024,1024,20,200,0.160696,13.3636
6,v4,1024,1024,1024,20,200,0.542351,3.95958
6,v5.2,1024,1024,1024,20,200,0.537487,3.99541
7,cuBLAS,1024,1024,1024,20,200,0.161188,13.3229
7,v4,1024,1024,1024,20,200,0.539121,3.98331
7,v5.2,1024,1024,1024,20,200,0.539095,3.9835
7,v6,1024,1024,1024,20,200,0.35243,6.09336
8,v4,1024,1024,1024,20,200,0.546391,3.93031
8,v5.2,1024,1024,1024,20,200,0.546002,3.93311
8,v6,1024,1024,1024,20,200,0.347305,6.18328
8,cuBLAS,1024,1024,1024,20,200,0.158587,13.5414
9,v5.2,1024,1024,1024,20,200,0.535752,4.00836
9,v6,1024,1024,1024,20,200,0.345523,6.21517
9,cuBLAS,1024,1024,1024,20,200,0.160394,13.3888
9,v4,1024,1024,1024,20,200,0.631869,3.39862
10,v6,1024,1024,1024,20,200,0.345626,6.21332
10,cuBLAS,1024,1024,1024,20,200,0.161229,13.3195
10,v4,1024,1024,1024,20,200,0.538143,3.99055
10,v5.2,1024,1024,1024,20,200,0.544056,3.94717
11,cuBLAS,1024,1024,1024,20,200,0.164813,13.0298
11,v4,1024,1024,1024,20,200,0.530852,4.04535
11,v5.2,1024,1024,1024,20,200,0.538117,3.99074
11,v6,1024,1024,1024,20,200,0.348314,6.16537
````

## raw/v6_final_build.log

SHA256：`80e225e8f8d3188a3e708ab20fcccb6f349a97e700e0ce67925c0720855b6342`

````text
[  9%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 24.985 ms
[ 18%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v6_final_large.log

SHA256：`c0747bf8f57a3b8a1a7c78e6e6211ece8538b2356b003ef906b39ed8f947002e`

````text
v6,1024,1024,1024,pattern=0,path=native,max_abs=0.00390625,bad=0
v6,1024,1024,1024,pattern=1,path=native,max_abs=0.00392016,bad=0
v6,1024,1024,1024,pattern=2,path=native,max_abs=0,bad=0
v6,1023,1025,1007,pattern=0,path=native,max_abs=0.00390625,bad=0
v6,1023,1025,1007,pattern=1,path=native,max_abs=0.00391471,bad=0
v6,1023,1025,1007,pattern=2,path=native,max_abs=0,bad=0
````

## raw/v6_final_memcheck.log

SHA256：`999c5e547bc759378148a3c5ebf7e0c07a9d9176914799b612de5df652a9f5f0`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v6_final_odd_original.log

SHA256：`90876dcb0dd60f5850defe875481217c612e725c70960f5bebcc515b3d887e0e`

````text
HGEMM Benchmark
M = 1023, N = 1025, K = 1007

Correctness
v0 naive     Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v1 shared    Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v2 register  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v3 register  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v4 half2     Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5 cp.async  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5.1 double  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5.2 bounds  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v6 WMMA      Max error: 0.0078125, Mean error: 0.000262809, Failed: 0 [PASS]

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.5671         0.8227         6.0852
v1 shared               2.0654         1.0225         7.5634
v2 register             1.0134         2.0839        15.4145
v3 register             0.6072         3.4778        25.7251
v4 half2                0.6626         3.1870        23.5744
v5 cp.async             0.6309         3.3474        24.7606
v5.1 double             0.6428         3.2855        24.3030
v5.2 bounds             0.6085         3.4705        25.6710
v6 WMMA                 0.4764         4.4332        32.7923
cuBLAS                  0.1562        13.5191       100.0000

v2 / v1 Speedup: 2.0380x
v3 / v2 Speedup: 1.6689x
v3 / v0 Speedup: 4.2275x
v4 / v3 Speedup: 0.9164x
v5 / v4 Speedup: 1.0503x
v5.1 / v5.0 Speedup: 0.9815x
v5.2 / v5.1 Speedup: 1.0563x
````

## raw/v6_final_original.log

SHA256：`7902f53bda7ca2e07aeb839fabe1c0f7e81774167a85c18c09e8170d60489129`

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

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.6140         0.8215         6.0092
v1 shared               1.9157         1.1210         8.1997
v2 register             0.9995         2.1485        15.7156
v3 register             0.4966         4.3240        31.6289
v4 half2                0.5624         3.8182        27.9290
v5 cp.async             0.4990         4.3036        31.4796
v5.1 double             0.5763         3.7266        27.2590
v5.2 bounds             0.5096         4.2141        30.8249
v6 WMMA                 0.3337         6.4350        47.0697
cuBLAS                  0.1571        13.6711       100.0000

v2 / v1 Speedup: 1.9166x
v3 / v2 Speedup: 2.0126x
v3 / v0 Speedup: 5.2634x
v4 / v3 Speedup: 0.8830x
v5 / v4 Speedup: 1.1271x
v5.1 / v5.0 Speedup: 0.8659x
v5.2 / v5.1 Speedup: 1.1308x
````

## raw/v6_final_profile_cublas.log

SHA256：`a282c022355524ad4ca6e6462185d5ffbadb0312f3a6280b60fabd95a9a1882d`

````text
==PROF== Connected to process 14833 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "ampere_fp16_s16816gemm_fp16_2..." - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 14833
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_final_profile_cublas.ncu-rep
````

## raw/v6_final_profile_v5_2.log

SHA256：`76e67e6bed8543083044dad433878cd4e2c40e9192a7b9761e570cceac9eeaf6`

````text
==PROF== Connected to process 14666 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v5_2_kernel" - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 14666
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_final_profile_v5_2.ncu-rep
````

## raw/v6_final_profile_v6.log

SHA256：`abc44653e5627418b7a17e8ce02ebb6e097413f42506df129f2093fd70ebc9e2`

````text
==PROF== Connected to process 14751 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_kernel" - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 14751
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_final_profile_v6.ncu-rep
````

## raw/v6_final_racecheck.log

SHA256：`86587824e1928539de09b170c889eb0fd32780afce505935219cd102118eef23`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v6_final_synccheck.log

SHA256：`999c5e547bc759378148a3c5ebf7e0c07a9d9176914799b612de5df652a9f5f0`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v6_final_test.log

SHA256：`71675ebf168130a0716e8ec21b19d5cadbc090038828e03c1c3f66c19905c5ff`

````text
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
````

## raw/v6_large.log

SHA256：`c0747bf8f57a3b8a1a7c78e6e6211ece8538b2356b003ef906b39ed8f947002e`

````text
v6,1024,1024,1024,pattern=0,path=native,max_abs=0.00390625,bad=0
v6,1024,1024,1024,pattern=1,path=native,max_abs=0.00392016,bad=0
v6,1024,1024,1024,pattern=2,path=native,max_abs=0,bad=0
v6,1023,1025,1007,pattern=0,path=native,max_abs=0.00390625,bad=0
v6,1023,1025,1007,pattern=1,path=native,max_abs=0.00391471,bad=0
v6,1023,1025,1007,pattern=2,path=native,max_abs=0,bad=0
````

## raw/v6_memcheck.log

SHA256：`999c5e547bc759378148a3c5ebf7e0c07a9d9176914799b612de5df652a9f5f0`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v6_odd_original.log

SHA256：`b94f203cd376a2ae4e463b475584867b76ff65bf34f22d7412fba313dd76fa91`

````text
HGEMM Benchmark
M = 1023, N = 1025, K = 1007

Correctness
v0 naive     Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v1 shared    Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v2 register  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v3 register  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v4 half2     Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5 cp.async  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5.1 double  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v5.2 bounds  Max error: 0.0078125, Mean error: 0.00026294, Failed: 0 [PASS]
v6 WMMA      Max error: 0.0078125, Mean error: 0.000262809, Failed: 0 [PASS]

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.5826         0.8177         6.5858
v1 shared               1.9321         1.0930         8.8033
v2 register             1.0044         2.1026        16.9343
v3 register             0.5456         3.8704        31.1720
v4 half2                0.6463         3.2676        26.3170
v5 cp.async             0.5567         3.7935        30.5527
v5.1 double             0.6506         3.2460        26.1431
v5.2 bounds             0.5569         3.7921        30.5415
v6 WMMA                 0.4826         4.3758        35.2429
cuBLAS                  0.1701        12.4162       100.0000

v2 / v1 Speedup: 1.9236x
v3 / v2 Speedup: 1.8408x
v3 / v0 Speedup: 4.7332x
v4 / v3 Speedup: 0.8443x
v5 / v4 Speedup: 1.1609x
v5.1 / v5.0 Speedup: 0.8557x
v5.2 / v5.1 Speedup: 1.1682x
````

## raw/v6_original.log

SHA256：`897c1c16124595f527e205a9b4013d670f50286f237b937b37b6fc86b6a0ea9a`

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

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.4885         0.8630         6.8986
v1 shared               2.0321         1.0568         8.4482
v2 register             0.9198         2.3348        18.6651
v3 register             0.5847         3.6728        29.3608
v4 half2                0.5210         4.1218        32.9501
v5 cp.async             0.5086         4.2222        33.7528
v5.1 double             0.5819         3.6905        29.5029
v5.2 bounds             0.4990         4.3036        34.4039
v6 WMMA                 0.5470         3.9258        31.3834
cuBLAS                  0.1717        12.5091       100.0000

v2 / v1 Speedup: 2.2094x
v3 / v2 Speedup: 1.5730x
v3 / v0 Speedup: 4.2560x
v4 / v3 Speedup: 1.1222x
v5 / v4 Speedup: 1.0244x
v5.1 / v5.0 Speedup: 0.8741x
v5.2 / v5.1 Speedup: 1.1661x
````

## raw/v6_profile_cublas.log

SHA256：`1aebe3f3f318b72207e2fd6a4283fa648dcac1c4ea8b15757e4c18454d62c537`

````text
==PROF== Connected to process 13785 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "ampere_fp16_s16816gemm_fp16_2..." - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 13785
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_profile_cublas.ncu-rep
````

## raw/v6_profile_v5_2.log

SHA256：`07eef7f412941be7bbb62fa452b043a551cdb170d65d589f2a8e99d83c84c9e9`

````text
==PROF== Connected to process 13618 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v5_2_kernel" - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 13618
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_profile_v5_2.ncu-rep
````

## raw/v6_profile_v6.log

SHA256：`cc72a5dd2de361a4e334c8ae613c9c4f0baa96d16506a4aa23b1f0322bf0beb9`

````text
==PROF== Connected to process 13703 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_kernel" - 0 (1/1): 0%....50%....100% - 31 passes
==PROF== Disconnected from process 13703
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v6_profile_v6.ncu-rep
````

## raw/v6_racecheck.log

SHA256：`86587824e1928539de09b170c889eb0fd32780afce505935219cd102118eef23`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v6_summary.txt

SHA256：`3077fb6825d54a79bfb2b611d3b104c4406ad20319d6cabced7d6c474d8f32c2`

````text
v6 batch 0 {'v4': 0.55072, 'v5.2': 0.5416525, 'v6': 0.495427, 'cuBLAS': 0.1662235}
paired v4/v6 1.1134237296182565 0.9230238776879681 1.3771325677110993 wins 10
paired v5.2/v6 1.0993542813067594 0.9091174258901443 1.3288189224225406 wins 11
paired cuBLAS/v6 0.33662347896435063 0.2847180773757136 0.3494498646569687 wins 0
v6 batch 1 {'v4': 0.531502, 'v5.2': 0.5329745, 'v6': 0.494446, 'cuBLAS': 0.1635325}
paired v4/v6 1.0743458333968414 1.0341400634937916 1.0916096908747133 wins 12
paired v5.2/v6 1.0828822124165762 1.0352365270101347 1.129383064338889 wins 12
paired cuBLAS/v6 0.33291762425995597 0.31324299808593703 0.3611301104949882 wins 0
v6 batch 2 {'v4': 0.540769, 'v5.2': 0.5389005, 'v6': 0.4981325, 'cuBLAS': 0.165916}
paired v4/v6 1.0827354521185788 1.0502204237723252 1.1873969474896768 wins 12
paired v5.2/v6 1.0872224255930472 1.0473163387923865 1.2888549825801192 wins 12
paired cuBLAS/v6 0.3336730625053693 0.32290991101529043 0.35649033180084966 wins 0
POOLED v4 0.541555 0.527534 0.663844 3.965402679321583
POOLED v5.2 0.5394589999999999 0.525742 0.641684 3.9808097519922745
POOLED v6 0.496796 0.482048 0.593106 4.3226669457886135
POOLED cuBLAS 0.165878 0.15678 0.185774 12.946163131940342
v6 PROFILE v5_2
Kernel Name hgemm_v5_2_kernel(const __half *, const __half *, __half *, int, int, int)
l1tex__throughput.avg.pct_of_peak_sustained_active 90.603680
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 85.752795
launch__registers_per_thread 64
launch__registers_per_thread_allocated 64.000000
launch__shared_mem_per_block_static 8.192000
sm__inst_executed_pipe_tensor.sum 0
sm__issue_active.avg.pct_of_peak_sustained_elapsed 64.050813
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 0
sm__throughput.avg.pct_of_peak_sustained_elapsed 85.752795
sm__warps_active.avg.pct_of_peak_sustained_active 57.873636
smsp__inst_executed.sum 72370176.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 67.690742
v6 PROFILE v6
Kernel Name hgemm_v6_kernel(const __half *, const __half *, __half *, int, int, int)
l1tex__throughput.avg.pct_of_peak_sustained_active 51.925144
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 51.142814
launch__registers_per_thread 50
launch__registers_per_thread_allocated 56.000000
launch__shared_mem_per_block_static 6.144000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 66.157821
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 8.325045
sm__throughput.avg.pct_of_peak_sustained_elapsed 74.917272
sm__warps_active.avg.pct_of_peak_sustained_active 67.938829
smsp__inst_executed.sum 66646016.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 67.106599
v6 PROFILE cublas
Kernel Name ampere_fp16_s16816gemm_fp16_256x128_ldg8_f2f_stages_32x3_nn
l1tex__throughput.avg.pct_of_peak_sustained_active 17.513816
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 9.225572
launch__registers_per_thread 218
launch__registers_per_thread_allocated 224.000000
launch__shared_mem_per_block_static 49.152000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 3.409780
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 24.601524
sm__throughput.avg.pct_of_peak_sustained_elapsed 24.601524
sm__warps_active.avg.pct_of_peak_sustained_active 16.659816
smsp__inst_executed.sum 1159424.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 6.473063
v6 temperature_C 55.0 71.0
v6 power_W 41.67 134.81
v6 SM_MHz 1815.0 1987.0
v6 memory_MHz 7000.0 7000.0
v6_final batch 0 {'v4': 0.533606, 'v5.2': 0.5355215, 'v6': 0.34431449999999997, 'cuBLAS': 0.1608985}
paired v4/v6 1.5391361258650744 1.4567505658422188 1.5982693000854278 wins 12
paired v5.2/v6 1.5461610855386407 1.4477189059474789 1.8874170046192564 wins 12
paired cuBLAS/v6 0.4623432993271662 0.4486542499522784 0.5133113856193917 wins 0
v6_final batch 1 {'v4': 0.5343925, 'v5.2': 0.534103, 'v6': 0.3449395, 'cuBLAS': 0.16146149999999998}
paired v4/v6 1.5525509623299336 1.4516602957380527 1.5857515558729651 wins 12
paired v5.2/v6 1.5456174449041056 1.454405463127967 1.577991867193307 wins 12
paired cuBLAS/v6 0.46277667455770854 0.45127307055588245 0.47850769774133967 wins 0
v6_final batch 2 {'v4': 0.5413015, 'v5.2': 0.538478, 'v6': 0.34983699999999995, 'cuBLAS': 0.1610035}
paired v4/v6 1.548143362535078 1.4871889386043036 1.828732095982033 wins 12
paired v5.2/v6 1.5398501331295253 1.495494481055989 1.5741176879054237 wins 12
paired cuBLAS/v6 0.45699172349062966 0.44569351382144695 0.4731736306895502 wins 0
POOLED v4 0.5358235 0.525512 0.631869 4.007819082216439
POOLED v5.2 0.5372415 0.526111 0.642724 3.997240808835505
POOLED v6 0.34575100000000003 0.340378 0.380974 6.211069954967591
POOLED cuBLAS 0.161134 0.155689 0.176189 13.327315451735823
v6_final PROFILE v5_2
Kernel Name hgemm_v5_2_kernel(const __half *, const __half *, __half *, int, int, int)
l1tex__throughput.avg.pct_of_peak_sustained_active 90.587501
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 85.479020
launch__registers_per_thread 64
launch__registers_per_thread_allocated 64.000000
launch__shared_mem_per_block_static 8.192000
sm__inst_executed_pipe_tensor.sum 0
sm__issue_active.avg.pct_of_peak_sustained_elapsed 63.846326
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 0
sm__throughput.avg.pct_of_peak_sustained_elapsed 85.479020
sm__warps_active.avg.pct_of_peak_sustained_active 57.877956
smsp__inst_executed.sum 72370176.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 67.675421
v6_final PROFILE v6
Kernel Name hgemm_v6_kernel(const __half *, const __half *, __half *, int, int, int)
l1tex__throughput.avg.pct_of_peak_sustained_active 63.178490
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 59.712771
launch__registers_per_thread 70
launch__registers_per_thread_allocated 72.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 42.615010
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 11.469863
sm__throughput.avg.pct_of_peak_sustained_elapsed 46.030665
sm__warps_active.avg.pct_of_peak_sustained_active 46.157332
smsp__inst_executed.sum 31156224.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 45.090181
v6_final PROFILE cublas
Kernel Name ampere_fp16_s16816gemm_fp16_256x128_ldg8_f2f_stages_32x3_nn
l1tex__throughput.avg.pct_of_peak_sustained_active 17.497571
l1tex__throughput.avg.pct_of_peak_sustained_elapsed 9.323615
launch__registers_per_thread 218
launch__registers_per_thread_allocated 224.000000
launch__shared_mem_per_block_static 49.152000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 3.446017
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 24.862973
sm__throughput.avg.pct_of_peak_sustained_elapsed 24.862973
sm__warps_active.avg.pct_of_peak_sustained_active 16.659704
smsp__inst_executed.sum 1159424.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 6.468748
v6_final temperature_C 57.0 72.0
v6_final power_W 41.43 130.21
v6_final SM_MHz 1890.0 1980.0
v6_final memory_MHz 7000.0 7000.0
````

## raw/v6_synccheck.log

SHA256：`999c5e547bc759378148a3c5ebf7e0c07a9d9176914799b612de5df652a9f5f0`

````text
========= COMPUTE-SANITIZER
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v6_test.log

SHA256：`71675ebf168130a0716e8ec21b19d5cadbc090038828e03c1c3f66c19905c5ff`

````text
v6,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,max_abs=0,bad=0
````
