# 代码学习路线

每个版本独立成文，按当前实际源码讲解；实验数值、失败尝试和测试证据集中在 [results](../results/README.md)。

所有版本实现行主序 `C[M,N]=A[M,K]×B[K,N]`，输入/输出 half，累加 float。BM/BN 是 block 输出 tile 的行列数，BK 是每轮 K 长度；tx/ty 是线程二维坐标，tid 是线性编号。矩阵的逻辑大小与 shared 的物理行跨度需要分开看。

| 顺序 | 学习主题 | 读完应能回答 |
|---|---|---|
| [v0](v0.md) | 逐元素基线 | 一个线程计算哪个 C 元素？ |
| [v1](v1.md) | Shared memory 分块 | 两个 barrier 各保护什么？ |
| [v2](v2.md) | 2×2 寄存器分块 | 2×2 输出为什么相隔 16？ |
| [v3](v3.md) | 4×4 寄存器分块与 padding | 4×4 复用与 padding 分别改变什么？ |
| [v4](v4.md) | half2 向量搬运 | 搬运变宽为什么没有减少数据量？ |
| [v5](v5.md) | 单缓冲 cp.async | 为什么用了 async 仍没有跨 tile 流水线？ |
| [v5.1](v5_1.md) | cp.async 双缓冲 | wait_group 1 如何保护当前 tile？ |
| [v5.2](v5_2.md) | 限制寄存器的独立实验 | 寄存器减少为何未必提速？ |
| [v6](v6.md) | WMMA 与 Tensor Core | warp 如何合作算矩阵，fragment 如何输出？ |
| [v6.1](v6_1.md) | 调整 WMMA 的 shared 行跨度 | 为什么数组行跨度和 WMMA ldm 要一起改？ |
| [v6.2](v6_2.md) | 128-bit 搬运与安全边界路径 | 地址对齐与尾包怎样安全处理？ |
| [v6.3](v6_3.md) | fragment 复用与分段输出 | 如何减少 fragment 加载，又避免 shared 限制驻留？ |

## 建议阅读顺序

1. v0～v3：先掌握输出映射和 global/shared/register 三层复用。
2. v4～v5.2：区分向量搬运、异步拷贝、双缓冲和资源约束。
3. v6～v6.3：学习 warp 矩阵运算、shared 物理布局与 fragment 复用。

通用数据流是 `Global A/B → Shared tile → 寄存器/fragment → FP32 累加 → FP16 C`。v0 没有 shared，v5 系列的异步搬运绕过显式数据中转寄存器，v6 系列输出还经过 shared 暂存。每个阶段的布局都可以不同，但坐标映射和 buffer 生命周期必须明确。

## 基准程序也要阅读

[benchmark/bench_hgemm.cu](../benchmark/bench_hgemm.cu) 包含 cuBLAS 的行主序转换、计时和参考验证。cuBLAS 调用利用 `Cᵀ=BᵀAᵀ`，交换 A/B 和 M/N，不实际转置数据。测试结果与测试工具的 stream 顺序都影响结论；不要只看 kernel 或单个 Profile 指标。

本次仅补充文档和整理历史证据，kernel、benchmark、CMake 没有改动。
