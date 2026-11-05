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
| v6.1 | WMMA + shared memory 每行 padding 16 half |
| v6.2 | v6.1 + 16-byte 向量搬运，未对齐及尾部标量处理 |
| v6.3 | 每 warp 32×32 fragment 复用，输出分段暂存，shared 降至 11 KiB |

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

# v6.1/v6.2 验证和 v6 / v6.1 / v6.2 / cuBLAS 对照
./build/bench_hgemm --test-v6-1
./build/bench_hgemm --test-large-v6-1
./build/bench_hgemm --test-v6-2
./build/bench_hgemm --test-large-v6-2
./build/bench_hgemm --bench-v6-2

# v6.3 验证和八组尺寸的 v6.2 / v6.3 / cuBLAS 对照
./build/bench_hgemm --test-v6-3
./build/bench_hgemm --test-large-v6-3
./build/bench_hgemm --bench-sizes
./build/bench_hgemm --profile v6_3 4096 4096 4096

# 内存、竞态、同步检查
compute-sanitizer --tool memcheck --error-exitcode 3 ./build/bench_hgemm --test-v6
compute-sanitizer --tool racecheck --error-exitcode 3 ./build/bench_hgemm --test-v6
compute-sanitizer --tool synccheck --error-exitcode 3 ./build/bench_hgemm --test-v6

# 独立 Profile，不使用 profiler 内时延替代普通 benchmark
ncu --set full --launch-count 1 -o build/v6_profile ./build/bench_hgemm --profile v6
```

`--test` / `--test-large` 验证 v4～v6.3；原来的 v5/v6 系列对照入口仍保留。
可配置 `-DHGEMM_PTXAS_VERBOSE=ON` 查看寄存器、shared memory 与 spill 用量。

## 当前结果

2026-11-05 的 v6.3 实验保留 v6.2 作为独立基线，沿用默认 cuBLAS。3 批 × 12 轮同批比较：

| 尺寸 | v6.2 ms | v6.3 ms | cuBLAS ms | v6.3 % cuBLAS |
|---|---:|---:|---:|---:|
| 1024³ | 0.1431 | 0.1623 | 0.1615 | 99.5% |
| 2048³ | 1.0037 | 0.9732 | 0.7779 | 79.9% |
| 4096³ | 8.0685 | 7.0849 | 5.1483 | 72.7% |

4096³ 吞吐提升约 13.9%，36/36 次配对均快于 v6.2；1024³ 退步，不能整体替代 v6.2。132 项完整 CPU 参考检查、三种 sanitizer 均通过。其他五组尺寸、波动范围及 Profile 解释见 [v6.3 实验报告](results/v6_3.md)。

### v6.1 / v6.2 历史批次

2026-11-01，RTX 3060 Laptop，1024³，3 批 × 12 轮，每项预热 20 次、计时 200 次；每批另有持续预热。以下为无 NCU 计时中位数：

| 版本 | 时延 ms | TFLOPS | % cuBLAS |
|---|---:|---:|---:|
| v6 | 0.3441 | 6.242 | 47.3% |
| v6.1 | 0.2785 | 7.712 | 58.4% |
| v6.2 | 0.1432 | 14.992 | 113.6% |
| cuBLAS | 0.1627 | 13.197 | 100% |

v6.2 在本次 36 轮配对比较中均快于 v6、v6.1 及 cuBLAS 默认算法；这仅是本机 1024³ 的结果，不代表全面超过 cuBLAS。GPU 未锁频，样本存在频率和温度波动。
v6.1 的 60 项、v6.2 的 132 项 CPU 参考检查通过，三种 sanitizer 均无错误。扩展测试程序发现的默认 stream H2D 与 nonblocking kernel 缺少依赖问题已修复，并重新验证基线。
见 [v6.1/v6.2 实验报告](results/v6_1_v6_2.md)；早期 WMMA 演进保留在 [v6 实验报告](results/v6.md)。

## 文件组织

- `kernels/`：各版本 CUDA kernel；`kernels/variants/`：保留的实验变体。
- `include/hgemm.cuh`：统一 launcher 声明。
- `benchmark/bench_hgemm.cu`：cuBLAS 对照、参考验证、计时与 Profile 入口。
- `results/`：简洁实验报告与对应原始数据 ZIP；散落的 `.ncu-rep` 和构建产物不提交。
- `CODEX_HANDOFF_HGEMM.md`：历史交接说明，当前代码和新实验报告优先。

后续方向：沿用默认 cuBLAS 多尺寸对照，针对大矩阵研究更大的 block tile 和数据复用；小矩阵保留 v6.2。
