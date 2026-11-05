# 实验结果与测试证据

[返回主页](../README.md) · [代码学习目录](../doc/README.md)

本目录回答“测了什么、结果如何、证据在哪里”；`doc` 解释“代码怎么实现”。2026-11-05 的这次整理没有改 kernel，也没有重新运行 GPU 测试。

## 按版本阅读

| 版本 | 详细分析 | 实现讲解 | 已核实的测试证据 |
|---|---|---|---|
| v0 | [结果](v0.md) | [代码](../doc/v0.md) | 三个尺寸 cuBLAS 对照 PASS；未找到独立 CPU/sanitizer 套件 |
| v1 | [结果](v1.md) | [代码](../doc/v1.md) | 三个尺寸 cuBLAS 对照 PASS；未找到独立 CPU/sanitizer 套件 |
| v2 | [结果](v2.md) | [代码](../doc/v2.md) | 三个尺寸 cuBLAS 对照 PASS；未找到独立 CPU/sanitizer 套件 |
| v3 | [结果](v3.md) | [代码](../doc/v3.md) | 三个尺寸 cuBLAS 对照 PASS；未找到独立 CPU/sanitizer 套件 |
| v4 | [结果](v4.md) | [代码](../doc/v4.md) | 历史每版 45 项 CPU 参考、小尺寸三种 sanitizer；另有普通总表 PASS |
| v5 | [结果](v5.md) | [代码](../doc/v5.md) | 历史每版 45 项 CPU 参考、小尺寸三种 sanitizer；另有普通总表 PASS |
| v5.1 | [结果](v5_1_20261101_report.md) | [代码](../doc/v5_1.md) | 历史每版 45 项 CPU 参考、小尺寸三种 sanitizer；另有普通总表 PASS |
| v5.2 | [结果](v5_2_20261101_report.md) | [代码](../doc/v5_2.md) | 历史每版 45 项 CPU 参考、小尺寸三种 sanitizer；另有普通总表 PASS |
| v6 | [结果](v6.md) | [代码](../doc/v6.md) | 历史 60 项 CPU 参考和三种 sanitizer；修复 H2D 后重测 CPU 参考 |
| v6.1 | [结果](v6_1_v6_2.md) | [代码](../doc/v6_1.md) | 最终 60 项 CPU 参考，三种 sanitizer |
| v6.2 | [结果](v6_1_v6_2.md) | [代码](../doc/v6_2.md) | 最终 132 项 CPU 参考，三种 sanitizer |
| v6.3 | [结果](v6_3.md) | [代码](../doc/v6_3.md) | 最终 132 项 CPU 参考，三种 sanitizer；八组性能尺寸另有抽样 |

v0～v3 已核实的三个尺寸是 1024³、31×33×17、1023×1025×1007，原文见 [baseline_checks.md](baseline_checks.md)。其中 1024³ 的最新记录包含 v0～v6.3 全版本。交接文档提过的 1000³ 缺少此次能找到的独立日志，没有补写为已核实测试。

v4～v5.2 的 45 项/版本来自历史 13 小尺寸+2 大尺寸×3 输入的扩展验证。它们发生在 H2D stream 修复前，记录中的 PASS 如实保留，不称为修复后的重测；当前普通默认 stream 总表另有通过记录。v6/v6.1 的修复后 CPU 重测、v6.1 的修复后 sanitizer、v6.2 的最终结果见对应原始记录。

## 可直接阅读的原始记录

| 文件 | 内容 |
|---|---|
| [baseline_checks.md](baseline_checks.md) | 三份精选原始总表，便于定位早期版本测试及 v0～v6.3 快照 |
| [legacy_profile.csv](legacy_profile.csv) | 13 份早期 NCU 报告的关键指标离线导出 |
| [v5.1 原始记录](v5_1_20261101_records.md) | v4/v5/v5.1 测试、sanitizer、steady/普通计时及构建 |
| [v5.2 原始记录](v5_2_20261101_records.md) | 限寄存器实验、三批计时、测试与 sanitizer |
| [v6 原始记录](v6_records.md) | 基础/最终 WMMA 两版的测试及三批计时 |
| [v6.1/v6.2 原始记录](v6_1_v6_2_records.md) | padding/向量化、失败诊断、H2D 修复、重测及最终三批结果 |
| [v6.3 原始记录](v6_3_records.md) | 首次尝试与最终版本、八组尺寸三批结果；最终文件以 v63_final_ 开头 |

每段原始记录带原文件名和 SHA256（对应本地原文件，展示仅去除行尾空白）；失败日志保留，不能把其中的失败或修复前测量当成最终结果。它们是历史日志原文，因此部分命令/路径可能与当前目录布局不同。

## 计时与正确性的口径

- 普通 `[M N K]`：全部注册版本与 cuBLAS 对照，atol=rtol=1e-2，5 次预热/20 次计时，固定顺序。适合快速检查，不能证明小幅稳定收益。
- `--test` / `--test-large`：当前覆盖 v4～v6.3，逐元素 CPU double 参考；dyadic/交替符号输入检查最终 half 精确一致，随机输入采用 gamma_K 与 FP16 输出舍入误差界。NaN 预填检查漏写。
- `--test-v6[-1/-2/-3]`：单版本验证。v6.2/v6.3 小尺寸包含输入偏移一个 half；不能把这些地址偏移测试算到 v4/v5。
- `--bench-sizes`：v6.2/v6.3/cuBLAS 八组尺寸。每批先完整对照 cuBLAS，对差异位置用 CPU 裁决，另抽样 256 个位置；2048³/4096³ 没有做完整 CPU 全矩阵参考。
- benchmark 时延与 NCU 测量分开。Profile 的 instruction、bank conflict、occupancy 数值不是端到端耗时占比。

GPU 未锁频、有桌面负载，跨批频率/温度变化明显；使用报告中的同批/同轮比较，不把不同批次的最优数值拼在一起。`legacy_profile.csv` 的 `static_shared_bytes` 以 bytes 为单位，其他列保留原指标名，空字段表示未采集。

## 完整原始文件的本地位置

原先 5 个 ZIP 已全部解包并逐文件校验，然后移除当前目录中的 ZIP。Git 保存上述可读日志、计时和分析，不提交重复源码快照、大型 SASS 或二进制 Profile。

为保留全部原始材料、同时避免增加散落的结果文件，使用已有目录：

- `.ncu-rep`：`results/ncu/<实验标签>__<原成员路径将 / 替换为 __>`。
- 其他完整原始文件：`build/history__<实验标签>__<原成员路径将 / 替换为 __>`。
- 本地完整清单和 SHA256：`build/docs_archive_manifest.json`。

实验标签为 `v5_1_20261101`、`v5_2_20261101`、`v6`、`v6_1_v6_2`、`v6_3`。例如最终 v6.3 的原始报告在 `results/ncu/v6_3__raw__v63_final_profile_v6_3_4096.ncu-rep`，对应完整指标 CSV 在 `build/history__v6_3__raw__v63_final_metrics_v6_3_4096.csv`。

这些完整文件仅本地保留，fresh clone 不包含它们；不要把 `build/history__*` 当作可以随意删除的临时文件。先前提交 `3f0e5b7` 仍可追溯原始归档，本次未改写 Git 历史。当前源码树的后续实验以可读记录为主。
