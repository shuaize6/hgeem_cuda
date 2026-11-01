# HGEMM-CUDA

在 RTX 3060 Laptop（Ampere / sm_86）上逐步实现和优化行主序半精度矩阵乘法：

**C[M,N] = A[M,K] × B[K,N]，FP16 输入、FP32 累加、FP16 输出。**

项目保留各代独立 kernel，结合正确性测试、无 profiler 计时和 Nsight Compute 分析，记录有效与无效的优化实验。

## 版本演进

| 版本 | 实现 |
|---|---|
| v0 | 每线程一个输出元素 |
| v1 | Shared memory tiling |
| v2 | 2×2 register tiling |
| v3 | 4×4 register tiling |
| v4 | half2 向量化搬运 |
| v5 | 单缓冲 cp.async |
| v5.1 | cp.async 双缓冲 |
| v5.2 | 双缓冲 + launch bounds 限制寄存器 |
| v6 | Tensor Core WMMA，64×64×32 block tile |

## 编译与运行

已验证环境：WSL2 Ubuntu 24.04、CUDA Toolkit 12.8.61、g++ 13.3、CMake 3.28.3。
根 CMake 当前指定 sm_86；其他 GPU 需要调整架构设置并重新验证。

```bash
cmake -S . -B build -DCMAKE_CUDA_COMPILER=/usr/local/cuda-12.8/bin/nvcc
cmake --build build -j4
./build/bench_hgemm 1024 1024 1024
```

默认输出各版本的正确性、Latency、TFLOPS 和 `% cuBLAS`。
`% cuBLAS = cuBLAS 时延 / 当前 kernel 时延 × 100%`。

```bash
# v6 全元素 CPU double 参考验证：小尺寸 / 大尺寸
./build/bench_hgemm --test-v6
./build/bench_hgemm --test-large-v6

# v4 / v5.2 / v6 / cuBLAS 交错重复计时
./build/bench_hgemm --bench-v6

# 内存、竞态、同步检查
compute-sanitizer --tool memcheck --error-exitcode 3 ./build/bench_hgemm --test-v6
compute-sanitizer --tool racecheck --error-exitcode 3 ./build/bench_hgemm --test-v6
compute-sanitizer --tool synccheck --error-exitcode 3 ./build/bench_hgemm --test-v6

# 独立 Profile，不使用 profiler 内时延替代普通 benchmark
ncu --set full --launch-count 1 -o build/v6_profile ./build/bench_hgemm --profile v6
```

`--test` / `--test-large` 验证 v4～v6；原来的 v5 系列对照入口仍保留。
可配置 `-DHGEMM_PTXAS_VERBOSE=ON` 查看寄存器、shared memory 与 spill 用量。

## 当前结果

2026-11-01，RTX 3060 Laptop，1024³，3 批 × 12 轮，每项预热 20 次、计时 200 次；每批另有持续预热。以下为无 NCU 计时中位数：

| 版本 | 时延 ms | TFLOPS | % cuBLAS |
|---|---:|---:|---:|
| v4 | 0.5358 | 4.008 | 30.1% |
| v5.2 | 0.5372 | 3.997 | 30.0% |
| v6 | 0.3458 | 6.211 | 46.6% |
| cuBLAS | 0.1611 | 13.327 | 100% |

v6 在本次 36 轮配对比较中均快于 v4/v5.2，约 1.55×，尚未追平 cuBLAS。GPU 未锁频，结果不能推广到所有设备或矩阵尺寸。
v6 的 60 项 CPU 参考检查与三种 sanitizer 通过，详细测试范围、误差规则和限制见 [v6 实验报告](results/v6.md)。

## 文件组织

- `kernels/`：各版本 CUDA kernel；`kernels/variants/`：保留的实验变体。
- `include/hgemm.cuh`：统一 launcher 声明。
- `benchmark/bench_hgemm.cu`：cuBLAS 对照、参考验证、计时与 Profile 入口。
- `results/`：简洁实验报告与对应原始数据 ZIP；散落的 `.ncu-rep` 和构建产物不提交。
- `CODEX_HANDOFF_HGEMM.md`：历史交接说明，当前代码和新实验报告优先。

下一项实验方向：向量化 v6 的 Global→Shared 搬运，减少标量加载与地址计算，再逐步评估异步流水线。
