# 早期版本与全版本的原始总表

这些记录证明早期版本曾测试过。普通入口使用 cuBLAS 容差对照（atol=rtol=1e-2），与后续逐元素 CPU double 检查的强度不同。以下保持已有日志原文，本次只整理，没有重新编译或运行 GPU 测试。

## snapshot-1024

2026-11-05，1024³，v0～v6.3，同次普通 CLI，5 次预热/20 次计时；固定执行顺序，不能据此判断稳定收益。

原始文件：`raw/v63_final_table.log`。

```text
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
```

## boundary-31-33-17

2026-11-01，31×33×17，v0～v5.1，普通 CLI。

原始文件：`v5_1_20261101_integrated_original_cli.log`。

```text
HGEMM Benchmark
M = 31, N = 33, K = 17

Correctness
v0 naive     Max error: 0, Mean error: 0, Failed: 0 [PASS]
v1 shared    Max error: 0, Mean error: 0, Failed: 0 [PASS]
v2 register  Max error: 0, Mean error: 0, Failed: 0 [PASS]
v3 register  Max error: 0, Mean error: 0, Failed: 0 [PASS]
v4 half2     Max error: 0, Mean error: 0, Failed: 0 [PASS]
v5 cp.async  Max error: 0, Mean error: 0, Failed: 0 [PASS]
v5.1 double  Max error: 0, Mean error: 0, Failed: 0 [PASS]

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                0.0077         0.0045       119.2053
v1 shared               0.0089         0.0039       104.0462
v2 register             0.0099         0.0035        93.2643
v3 register             0.0126         0.0028        73.1707
v4 half2                0.0119         0.0029        77.2532
v5 cp.async             0.0105         0.0033        87.3786
v5.1 double             0.0126         0.0028        72.8745
cuBLAS                  0.0092         0.0038       100.0000

v2 / v1 Speedup: 0.8964x
v3 / v2 Speedup: 0.7846x
v3 / v0 Speedup: 0.6138x
v4 / v3 Speedup: 1.0558x
v5 / v4 Speedup: 1.1311x
v5.1 / v5.0 Speedup: 0.8340x
```

## odd-1023-1025-1007

2026-11-01，1023×1025×1007，v0～v6，普通 CLI。

原始文件：`raw/v6_final_odd_original.log`。

```text
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
```
