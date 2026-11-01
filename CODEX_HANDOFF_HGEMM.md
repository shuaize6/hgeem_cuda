# HGEMM-CUDA 项目交接说明（从 ChatGPT 网页对话迁移到本地 Codex）

> 编写时间：2026-10-31。本文基于用户在网页对话中提供的源码片段、benchmark、NCU 截图与讨论进行摘要；**不是对本地仓库文件的实时检查**。真正执行前请以本地源码、Git 状态和重新运行的实验为准。

## 1. 项目目标与工作方式

- 项目：`~/projects/HGEMM-CUDA`（WSL2），从零实现并优化 FP16 输入 / FP32 累加 / FP16 输出的 HGEMM，和 cuBLAS 对比。
- 学习路线：CUDA 映射 → Shared Memory Tile → Register Tile → 向量化加载 → `cp.async` → Double Buffer → 计划中的 Tensor Core WMMA。
- 用户希望 **循序渐进，用中文推导，再改小块代码、编译测试、NCU Profile，再做结论**，理解每个技术为什么有效；不要直接把已有项目重构成无法理解的一大套系统。
- 正确性优先：每个 Kernel 先对照 cuBLAS 且测试不规则尺寸，再谈性能。Benchmark 计时最好在 NCU 外独立运行。少量百分比差异需要重复测量，不要过度解释。

## 2. 机器与工具链（对话所述，需复核）

- WSL2 Ubuntu 24.04；GPU：RTX 3060 Laptop，6GB，Compute Capability 8.6（sm_86）。另有台式机 RTX 5070，但本项目主要在 WSL 笔记本跑。
- CUDA Toolkit 12.8.61（`/usr/local/cuda-12.8`）、Nsight Compute CLI 2025.1、CMake 3.28.3、g++ 13.3.0。
- 常用路径：`~/projects/HGEMM-CUDA`；激活环境通常是 `source ~/projects/.venv/bin/activate`（C++/CUDA 构建未必需要 Python 虚拟环境）。
- 编译 / 运行：

```bash
cd ~/projects/HGEMM-CUDA
cmake -S . -B build
cmake --build build -j
./build/bench_hgemm 1024 1024 1024
```

- 主要文件结构（以实际仓库为准）：`kernels/hgemm_v0.cu` 至 `hgemm_v5.cu`、`kernels/hgemm_v5_1.cu`、`include/hgemm.cuh`、`benchmark/bench_hgemm.cu`、`CMakeLists.txt`、`results/ncu/*.ncu-rep`、`kernels/variants/`。

## 3. Kernel 演化和重要原理

| 版本 | 主要思想 | 参数 / 注意点 |
|---|---|---|
| v0 | Naive；每线程一个 C 元素，沿 K 累加 | FP16 输入，FP32 累加 |
| v1 | Shared Memory Tiling | 16×16 输出 Tile；每线程一个输出；两个 `__syncthreads()` / K-tile |
| v2 | Register Tiling 2×2 | 32×32 输出 Tile，K Tile=16，16×16 threads；每线程四个 C 累加器 `c00..c11`，对应四个相距 16 行/列的输出位置 |
| v3 | Register Tiling 4×4 | 64×64 输出 Tile，K Tile=16，16×16 threads；每线程 16 个 FP32 累加器，Shared A[64][16]、B[16][64] |
| v3 Padding 实验 | 将 `Bs[BK][BN]` 改为 `Bs[BK][BN+16]` | 消除 Shared Store Bank Conflicts，但独立 benchmark 未确认显著加速；两个版本最好保留 |
| v4 | `half2` 32-bit Global Load / Shared Store | v3 的计算结构不变；重排 tile 搬运映射；行跨度奇数走标量兜底 |
| v5.0 (`hgemm_v5`) | 单缓冲 `cp.async.ca.shared.global`（4B）、`commit_group`、`wait_group 0` | 基本不跨 K-tile 重叠计算与搬运；SASS 可见 `LDGSTS` |
| v5.1 (`hgemm_v5_1`) | 两套 Shared Buffer + 预加载，尝试下一 Tile 搬运与当前 Tile 计算重叠 | `wait_group 1` / `wait_group 0` + block barriers；**请复核同步、racecheck 与真实收益**；奇数 K/N 时曾写成回退 v5.0 |

提示：原始 v3 的 `acc[i][j]` 对应 `C[blockIdx.y*64 + ty+i*16][blockIdx.x*64 + tx+j*16]`。不要误认为一个线程计算相邻 4×4 的输出。

## 4. 性能数据（用户历史实测；有运行波动）

**单次同批 1024×1024×1024 Benchmark（v3 里程碑）：**

| Kernel | Latency(ms) | TFLOPS |
|---|---:|---:|
| v0 | 3.3301 | 0.6449 |
| v1 | 2.0583 | 1.0433 |
| v2 | 1.0542 | 2.0371 |
| v3 | 0.5003 | 4.2922 |
| cuBLAS | 0.1521 | 14.1175 |

此批 v3/v0 约 6.66×，v3/v2 约 2.11×。这不是所有运行的稳定值。

**后续 v4/v5.0/v5.1 五轮、无 NCU 的 1024³ Benchmark（中位数）：**

| Kernel | Median latency (ms) | 相对 v4 |
|---|---:|---|
| v4 half2 | 0.5145 | 基准 |
| v5.0 cp.async | 0.5234 | 略慢 |
| v5.1 double | 0.5343 | 略慢 |

v4 与 v3 的早期五轮比较：中位数 v3 0.5740 ms、v4 0.5654 ms，改进幅度约 1.5%，尚不能称稳定显著提升。单次 NCU 内输出过约 21% 加速，但不能作为最终结论。

**正确性：** 已有 v0～v4 对 1024³、1000³、1023×1025×1007、31×33×17 等尺寸的 PASS 日志。早期 v5.0 / v5.1 的独立完整 PASS 日志在目前对话末尾**未提供**，不可假定已经过全部边界和 racecheck。现有 benchmark 曾使用 `atol=1e-2`、`rtol=1e-2`，以后还应增加更严格容差、独立高精度参考和不同输入分布。

## 5. Nsight Compute 关键实验与结论

- v1 → v2 → v3 Shared Load Requests：41,943,040 → 20,971,520 → 10,485,760。Register Tile 扩大后，单位 FMA 所需 Shared Load 指令明显减少。
- v1 / v2 的 MIO Throttle 曾是主要 Warp stall；v3 Issue Slots Busy 达约 65.77%，v1 约 47.05%、v2 约 52.11%。不能仅以 stall 百分比判断性能。
- v3 registers/thread 43，Shared Memory/block ~4KB，Achieved Occupancy ~68.54%，Grid=256；NCU 提示 partial wave/tail effect。
- v3 原始 Shared Store Requests=1,048,576、Wavefronts=1,572,864、Store 行的 Bank Conflicts=524,288。B[16][64] 的行跨度 128B 使 Warp 的相邻 ty 行可能落到同一组 bank。对 B 每行 padding 16 个 half 后 Shared Store Wavefronts=1,048,576、Bank Conflicts=0，但 benchmark 无明显稳定加速。
- v4 Global Load Requests=524,288（相较 v3 1,048,576，减半），Shared Store Requests=524,288（减半），Shared Load Requests 仍 10,485,760；v4 registers/thread ~60。Source/SASS 确实观察到 v3 `LDG.E.U16.CONSTANT` 与 v4 `LDG.E.CONSTANT` + `STS`，向量化搬运生效；保留的 U16 指令是运行时边界/标量回退代码，出现于静态 SASS 不代表主测试实际执行。
- v5.0 registers/thread=64；普通 Global Load=0，而 `Global Load To Shared Store (access)`=524,288，SASS 可见 `LDGSTS`。Shared Load=10,485,760。NCU Shared Store From Global Load Requests=1,048,576、Wavefronts=1,310,720、Bank Conflicts=786,432。此类计数不应全部直接解释为访问布局冲突；需看 Source 中 Excessive Wavefronts 和访问映射。
- v5.0 Warp Cycles/Issued Instruction≈10.71、v4≈10.22；单缓冲 `cp.async` 未证明有收益。v5.1 Benchmark 也暂未证明流水线带来稳定加速。
- 重要习惯：NCU Profiling 可影响 benchmark 时延，性能对比应在不带 profiler 的条件下进行，最好使用 GPU warmup、重复运行、中位数和监测时钟；有控制变量的 A/B 对比更可靠。

## 6. 当下任务与建议顺序（不是已经完成的事实）

**眼前优先级：审查 v5.1 正确性与同步，再 Profile，决定优化方向。**

1. 读取仓库真实源代码和 `git status`：检查 `hgemm_v5.cu`、`hgemm_v5_1.cu`、`benchmark/bench_hgemm.cu`、`include/hgemm.cuh`、`CMakeLists.txt`。不要依据交接文档想当然重写。
2. 审查 `cp.async` 地址对齐、边界零填充、group 提交与等待、block 同步、buffer overwrite 安全，特别是 `wait_group 1` 的 per-thread 语义。检查是否存在竞态、越界和隐式回退影响 benchmark。
3. 构建并测试 1 K-tile、2 K-tiles、尾 K tile 和大矩阵：`64 64 16`、`128 128 32`、`128 128 34`、`1024 1024 1024`、`1023 1025 1007`。对 v5.1 走到的实际路径作明确标注。
4. 如果有 `compute-sanitizer`，针对较小矩阵跑 `--tool memcheck` / `--tool racecheck`，注意它会分析整个测试程序所有 Kernel；若诊断可疑则先聚焦到独立 kernel 启动。
5. 比较 v5.0 与 v5.1 的 NCU：`LaunchStats`、`Occupancy`、`MemoryWorkloadAnalysis_Tables`、`SchedulerStats`、`WarpStateStats`；注意 shared-memory 访问的 Excessive Wavefronts 和 `LDGSTS`。
6. 在独立 Benchmark 上多轮复测；若 v5.1 没有稳定收益，可如实记录，然后考虑实现 Tensor Core WMMA 作为下一阶段，不要为了宣称进步而修改数据。
7. 如需后续优化，确保每次只变更一个关键设计选择并保存 baseline / NCU 报告，记录编译参数、运行矩阵、GPU 时钟与结果。

参考 NCU 命令（按实际 kernel mangling/选择器调整）：

```bash
ncu \
  --kernel-name regex:hgemm_v5_1_kernel \
  --launch-count 1 \
  --section LaunchStats \
  --section Occupancy \
  --section MemoryWorkloadAnalysis_Tables \
  --section SchedulerStats \
  --section WarpStateStats \
  --force-overwrite \
  -o results/ncu/v5_1_detail_1024 \
  ./build/bench_hgemm 1024 1024 1024
```

## 7. 给 Codex 的第一项工作

> 请先阅读 `CODEX_HANDOFF_HGEMM.md` 和当前仓库文件，检查现有 git 状态、编译配置和 v5.0/v5.1 的真实代码。**先不要修改代码**。用中文向我解释 v5.1 的 `cp.async` 双缓冲时序与两个 barrier 的用途，列出你认为最需验证的竞态、边界条件和性能瓶颈，再给出一个不超过 5 步的测试方案。等我确认后，再逐步编译、测试、profile 并改进。不要假定网页版历史中的所有数据等于本机当前状态。
