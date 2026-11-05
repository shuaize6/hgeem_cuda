# HGEMM-CUDA

在 RTX 3060 Laptop（Ampere / sm_86）上，从逐元素实现逐步优化 CUDA 半精度矩阵乘法。行主序 `C[M,N] = A[M,K] × B[K,N]`，FP16 输入、FP32 累加、FP16 输出。

项目保留 v0～v6.3 的独立 kernel，也记录没有稳定收益的实验。

- 想了解每版怎么写：阅读 [doc 学习目录](doc/README.md)。
- 想看性能、测试和 Profile：阅读 [results 实验目录](results/README.md)。
- 想找以前的测试：查看 [原始全版本与边界测试总表](results/baseline_checks.md)。v0～v4 确实有历史测试，现已补上独立结果页。

## v0～v6.3 结果概览

“快照 ms”来自 **2026-11-05 同一次 1024³ 普通运行**，每项预热 5 次、计时 20 次，cuBLAS 为 0.1910 ms。它便于直观看到全部版本的数量级，属于固定顺序的快速总表，**不能证明稳定加速**。实验结论采用各结果页注明的 Profile 和多轮对照；不同批次不混算加速比。

| 版本 | 主要改动 | 快照 ms | 实验结论 | 阅读 |
|---|---|---:|---|---|
| v0 | 逐元素基线 | 2.6434 | 建立最基本的性能/正确性参照 | [实现](doc/v0.md) · [结果](results/v0.md) |
| v1 | Shared memory 分块 | 2.0260 | 显式复用 A/B，快速总表耗时下降 | [实现](doc/v1.md) · [结果](results/v1.md) |
| v2 | 2×2 寄存器分块 | 1.0357 | shared load 指令约减半 | [实现](doc/v2.md) · [结果](results/v2.md) |
| v3 | 4×4 寄存器分块 + B padding | 0.5445 | shared load 再减半；padding 单独收益未证实 | [实现](doc/v3.md) · [结果](results/v3.md) |
| v4 | half2 搬运 | 0.5563 | 搬运指令减半，整体加速尚不稳定 | [实现](doc/v4.md) · [结果](results/v4.md) |
| v5 | 单缓冲 cp.async | 0.5597 | 改变搬运路径，未证明稳定快于 v4 | [实现](doc/v5.md) · [结果](results/v5.md) |
| v5.1 | cp.async 双缓冲 | 0.5944 | 有流水线，但寄存器压力抵消部分收益 | [实现](doc/v5_1.md) · [结果](results/v5_1_20261101_report.md) |
| v5.2 | launch bounds 限寄存器 | 0.5487 | 65→64 寄存器，无 spill，未稳定提速 | [实现](doc/v5_2.md) · [结果](results/v5_2_20261101_report.md) |
| v6 | Tensor Core WMMA | 0.3741 | 三批 1024³ 约为 v4/v5.2 的 1.55× 吞吐 | [实现](doc/v6.md) · [结果](results/v6.md) |
| v6.1 | Shared 行跨度 padding | 0.3060 | shared read 冲突下降，1024³ 稳定改善 | [实现](doc/v6_1.md) · [结果](results/v6_1_v6_2.md) |
| v6.2 | 128-bit 搬运 | 0.1392 | 1024³ 历史三批达到默认 cuBLAS 的 113.6% | [实现](doc/v6_2.md) · [结果](results/v6_1_v6_2.md) |
| v6.3 | Fragment 复用 + 分段输出 | 0.1696 | 4096³ 吞吐提升 13.9%；1024³ 退步 | [实现](doc/v6_3.md) · [结果](results/v6_3.md) |

完整快照的 TFLOPS、`% cuBLAS` 和逐版 PASS 原文见 [总表](results/baseline_checks.md#snapshot-1024)。

## 多轮实验的代表结果

2026-11-01，1024³，3 批 × 12 轮，每项预热 20 次、计时 200 次；独立于 NCU：

| 版本 | 中位时延 ms | TFLOPS | % cuBLAS |
|---|---:|---:|---:|
| v6 | 0.344059 | 6.242 | 47.3% |
| v6.1 | 0.278461 | 7.712 | 58.4% |
| v6.2 | 0.143243 | 14.992 | 113.6% |
| cuBLAS | 0.162724 | 13.197 | 100% |

2026-11-05，v6.3 与 v6.2 的新一批多尺寸实验，3 批 × 12 轮：

| 尺寸 | v6.2 ms | v6.3 ms | cuBLAS ms | v6.3 % cuBLAS |
|---|---:|---:|---:|---:|
| 1024³ | 0.143086 | 0.162279 | 0.161539 | 99.5% |
| 2048³ | 1.003665 | 0.973210 | 0.777933 | 79.9% |
| 4096³ | 8.068505 | 7.084905 | 5.148260 | 72.7% |

v6.3 在 4096³ 的 36 次配对均快于 v6.2，但 1024³ 退步，不能整体替代 v6.2。GPU 未锁频且存在桌面负载；八组尺寸、重复次数、波动和原始计时见 [v6.3 分析](results/v6_3.md)。

`% cuBLAS = cuBLAS 时延 / 当前 kernel 时延 × 100%`，表示相对吞吐率。沿用默认 cuBLAS，与输入输出类型及计算语义相同的自写 kernel 比较；未搜索 cuBLASLt 算法。

## 编译与运行

已验证环境：WSL2 Ubuntu 24.04、CUDA Toolkit 12.8.61、g++ 13.3、CMake 3.28.3。根 CMake 指定 sm_86，其他 GPU 需要相应调整。

```bash
cmake -S . -B build -DCMAKE_CUDA_COMPILER=/usr/local/cuda-12.8/bin/nvcc
cmake --build build -j4
./build/bench_hgemm 1024 1024 1024
```

普通入口输出所有版本的 cuBLAS 正确性对照、Latency、TFLOPS 和 `% cuBLAS`。

```bash
# 全版本普通入口：包含 v0～v3
./build/bench_hgemm 31 33 17
./build/bench_hgemm 1023 1025 1007

# 全输出 CPU double 参考：当前 --test 从 v4 开始
./build/bench_hgemm --test
./build/bench_hgemm --test-large

# 单版本 CPU 参考验证
./build/bench_hgemm --test-v6-3
./build/bench_hgemm --test-large-v6-3

# 多轮交错计时；三个入口的比较对象不同
./build/bench_hgemm --bench-v5-2
./build/bench_hgemm --bench-v6-2
./build/bench_hgemm --bench-sizes

# 内存、竞态和同步检查
/usr/local/cuda-12.8/bin/compute-sanitizer --tool memcheck --error-exitcode 3 ./build/bench_hgemm --test-v6-3
/usr/local/cuda-12.8/bin/compute-sanitizer --tool racecheck --error-exitcode 3 ./build/bench_hgemm --test-v6-3
/usr/local/cuda-12.8/bin/compute-sanitizer --tool synccheck --error-exitcode 3 ./build/bench_hgemm --test-v6-3

# Profile 与普通计时分开运行
/usr/local/cuda-12.8/bin/ncu --set full --launch-count 1 -o build/v63_profile ./build/bench_hgemm --profile v6_3 4096 4096 4096
```

`--test-v6`、`--test-v6-1`、`--test-v6-2` 及对应 `--test-large-...` 仍可用；`--bench-compare`、`--bench-steady`、`--bench-v6`、`--bench-v6-1` 保留。可用 `-DHGEMM_PTXAS_VERBOSE=ON` 查看寄存器、shared 与 spill。

## 如何理解测试记录

v0～v3 有已核实的多尺寸 cuBLAS 对照 PASS，但没有独立保存的完整 CPU double/sanitizer 套件。v4～v5.2 的历史扩展检查、v6/v6.1 的 60 项检查、v6.2/v6.3 的 132 项检查在 [测试证据索引](results/README.md) 分别列出。没有把某个版本的测试覆盖算到其他版本，也没有把历史记录整理当成新一次测试。

v6.2 阶段修复了测试工具的 H2D stream 顺序问题；修复前后的记录有明确区分。kernel 正确性、benchmark 正确性和性能稳定性需要分别验证。

## 文件组织

- `kernels/`：各版本 CUDA kernel；`kernels/variants/` 保留实验变体。
- `include/hgemm.cuh`：统一 launcher 声明。
- `benchmark/bench_hgemm.cu`：cuBLAS 对照、CPU 参考、计时与 Profile 入口。
- `doc/`：每个版本的线程映射、访存、同步与实现讲解。
- `results/`：各版结果分析、原始文本记录和历史 Profile 指标 CSV，无 ZIP。
- `results/ncu/`：本地原始 Profile，Git 忽略二进制报告；可读指标及结论保留在结果页。
- `CODEX_HANDOFF_HGEMM.md`：历史交接摘要，当前源码和实验报告优先。

下一方向：小矩阵保留 v6.2，针对大矩阵继续研究 block tile 与数据复用。
