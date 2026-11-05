# v6_1_v6_2 原始文本记录

整理日期：2026-11-05。本文件整理已有执行记录，未重新运行实验。每节保留原文件名与内容，展示时仅去除行尾空白；SHA256 对应本地原始文件。失败尝试和最终结果均保留，解释见对应分析报告。原始 Profile、完整指标 CSV、SASS 与源码快照已解包保留本地；位置规则见 [结果索引](README.md)。

## raw/v612_summary.txt

SHA256：`3a15f90596c499d0525adb444a3b1cd2cd96bd46faeddeaae2322902f965ba4d`

````text
61 batch 0 {'v6': 0.339661, 'v6.1': 0.278461, 'v5.2': 0.5339780000000001, 'cuBLAS': 0.1607325}
paired v6/v6.1 1.2406222674513552 1.1825988028144363 1.3312850081193799 wins 12
paired v5.2/v6.1 1.915359099890298 1.8955473098330242 1.9878981396723345 wins 12
paired cuBLAS/v6.1 0.5806877184121197 0.5573983967514966 0.6411340556457398 wins 0
61 batch 1 {'v6': 0.3402675, 'v6.1': 0.2784355, 'v5.2': 0.5383885, 'cuBLAS': 0.160781}
paired v6/v6.1 1.225339555097241 1.1969366200920641 1.333223271004558 wins 12
paired v5.2/v6.1 1.931494322637404 1.8725926921865765 2.070446031268246 wins 12
paired cuBLAS/v6.1 0.5774638353062945 0.5676896233193063 0.6498445373268871 wins 0
61 batch 2 {'v6': 0.3430885, 'v6.1': 0.278912, 'v5.2': 0.5376765, 'cuBLAS': 0.16236}
paired v6/v6.1 1.2392820243606533 1.2091168280068956 1.2765209443582832 wins 12
paired v5.2/v6.1 1.9259163111486726 1.7652333907969764 2.0295618940606395 wins 12
paired cuBLAS/v6.1 0.5808949726107315 0.5563118478475602 0.6133187458187181 wins 0
POOLED v6 0.34150400000000003 0.335887 0.372372 TFLOPS 6.288311844077961
POOLED v6.1 0.2785175 0.268969 0.30164 TFLOPS 7.710408315455941
POOLED v5.2 0.537134 0.527524 0.570911 TFLOPS 3.9980408017366242
POOLED cuBLAS 0.16086299999999998 0.15488 0.186813 TFLOPS 13.349767491592226
PROFILE v61_profile_v6_1.csv
derived__memory_l1_wavefronts_shared_excessive 1671168
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 1572864
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 3204441
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 15.552783
launch__registers_per_thread 70
launch__registers_per_thread_allocated 72.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 37.899241
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 10.178546
sm__warps_active.avg.pct_of_peak_sustained_active 45.999341
smsp__inst_executed.sum 31223808.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 58.334125
smsp__sass_inst_executed_op_global_ld.sum 1048576.000000
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 1064960.000000
PROFILE v61_profile_v6.csv
derived__memory_l1_wavefronts_shared_excessive 6914048
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 6815744
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 8454340
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 46.268867
launch__registers_per_thread 70
launch__registers_per_thread_allocated 72.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 42.642577
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 11.477282
sm__warps_active.avg.pct_of_peak_sustained_active 46.186630
smsp__inst_executed.sum 31156224.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 45.092934
smsp__sass_inst_executed_op_global_ld.sum 1048576.000000
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 1064960.000000
PROFILE v61_profile_cublas.csv
derived__memory_l1_wavefronts_shared_excessive 65536
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 0
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 565269
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 6.713863
launch__registers_per_thread 218
launch__registers_per_thread_allocated 224.000000
launch__shared_mem_per_block_static 49.152000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 3.452324
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 24.908480
sm__warps_active.avg.pct_of_peak_sustained_active 16.659686
smsp__inst_executed.sum 1159424.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 6.476381
smsp__sass_inst_executed_op_global_ld.sum 0
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 34304.000000
temperature_C 52.0 67.0
power_W 41.26 131.43
SM_MHz 1897.0 1995.0
62 batch 0 {'v6': 0.380091, 'v6.1': 0.30437400000000003, 'v6.2': 0.160451, 'cuBLAS': 0.178447}
paired v6/v6.2 2.3098706402846565 2.1913239719157476 2.4319599464251547 wins 12
paired v6.1/v6.2 1.8890859088290153 1.7984947256133699 1.979357783744019 wins 12
paired cuBLAS/v6.2 1.1064873160621778 1.0526948143285821 1.139585612883315 wins 12
62 batch 1 {'v6': 0.34623000000000004, 'v6.1': 0.28152350000000004, 'v6.2': 0.143365, 'cuBLAS': 0.163615}
paired v6/v6.2 2.3805262425491125 2.2976415124513045 2.628891061308793 wins 12
paired v6.1/v6.2 1.9234564732984458 1.806575054327511 2.0531720189049536 wins 12
paired cuBLAS/v6.2 1.1286360134372342 1.0281009921383748 1.2283221486376232 wins 12
62 batch 2 {'v6': 0.33927450000000003, 'v6.1': 0.27446800000000005, 'v6.2': 0.1418805, 'cuBLAS': 0.161175}
paired v6/v6.2 2.4120338387408222 2.3500836582821703 2.5391099961579315 wins 12
paired v6.1/v6.2 1.9248764368677178 1.8275201853302898 2.068968894312986 wins 12
paired cuBLAS/v6.2 1.1402221162714363 1.0809940560588387 1.2273248028567176 wins 12
POOLED v6 0.344059 0.335693 0.393252 TFLOPS 6.241614513789786
POOLED v6.1 0.278461 0.266921 0.322033 TFLOPS 7.711972764588219
POOLED v6.2 0.1432425 0.132741 0.171484 TFLOPS 14.991944764996422
POOLED cuBLAS 0.16272399999999998 0.154767 0.190659 TFLOPS 13.197092303532363
PROFILE v62_profile_cublas.csv
derived__memory_l1_wavefronts_shared_excessive 65536
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 0
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 565264
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 6.704216
launch__registers_per_thread 218
launch__registers_per_thread_allocated 224.000000
launch__shared_mem_per_block_static 49.152000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 3.447394
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 24.872911
sm__warps_active.avg.pct_of_peak_sustained_active 16.659439
smsp__inst_executed.sum 1159424.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 6.475706
smsp__sass_inst_executed_op_global_ld.sum 0
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 34304.000000
PROFILE v62_profile_v6_1.csv
derived__memory_l1_wavefronts_shared_excessive 1671168
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 1572864
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 3203903
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 22.482709
launch__registers_per_thread 70
launch__registers_per_thread_allocated 72.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 54.795383
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 14.716319
sm__warps_active.avg.pct_of_peak_sustained_active 45.922156
smsp__inst_executed.sum 31223808.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 58.346817
smsp__sass_inst_executed_op_global_ld.sum 1048576.000000
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 1064960.000000
PROFILE v62_profile_v6_2.csv
derived__memory_l1_wavefronts_shared_excessive 1933312
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 1578254
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 3186855
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 47.004177
launch__registers_per_thread 56
launch__registers_per_thread_allocated 56.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 19.613359
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 30.931719
sm__warps_active.avg.pct_of_peak_sustained_active 58.450942
smsp__inst_executed.sum 5308416.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 21.738664
smsp__sass_inst_executed_op_global_ld.sum 131072.000000
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 147456.000000
PROFILE v62_profile_v6.csv
derived__memory_l1_wavefronts_shared_excessive 6914048
l1tex__data_bank_conflicts_pipe_lsu_mem_shared_op_ld.sum 6815744
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum 8453168
l1tex__data_pipe_lsu_wavefronts_mem_shared_op_ld.sum.pct_of_peak_sustained_elapsed 46.323704
launch__registers_per_thread 70
launch__registers_per_thread_allocated 72.000000
launch__shared_mem_per_block_static 16.384000
sm__inst_executed_pipe_tensor.sum 524288.000000
sm__issue_active.avg.pct_of_peak_sustained_elapsed 42.699035
sm__pipe_tensor_cycles_active.avg.pct_of_peak_sustained_elapsed 11.492478
sm__warps_active.avg.pct_of_peak_sustained_active 46.166344
smsp__inst_executed.sum 31156224.000000
smsp__issue_active.avg.pct_of_peak_sustained_active 45.173125
smsp__sass_inst_executed_op_global_ld.sum 1048576.000000
smsp__sass_inst_executed_op_local_ld.sum 0
smsp__sass_inst_executed_op_local_st.sum 0
smsp__sass_inst_executed_op_shared_st.sum 1064960.000000
temperature_C 54.0 67.0
power_W 39.76 125.21
SM_MHz 1867.0 1987.0
````

## raw/v61_bench_0.csv

SHA256：`0abbaa14201d9df6b80f00dcc360ccb3fe33f339194a0808145de9187a21f65d`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.337833,6.35664
0,v6.1,1024,1024,1024,20,200,0.28567,7.51735
0,v5.2,1024,1024,1024,20,200,0.541501,3.9658
0,cuBLAS,1024,1024,1024,20,200,0.159232,13.4865
1,v6.1,1024,1024,1024,20,200,0.276321,7.77169
1,v5.2,1024,1024,1024,20,200,0.527718,4.06937
1,cuBLAS,1024,1024,1024,20,200,0.163436,13.1396
1,v6,1024,1024,1024,20,200,0.34473,6.22947
2,v5.2,1024,1024,1024,20,200,0.528538,4.06307
2,cuBLAS,1024,1024,1024,20,200,0.16085,13.3509
2,v6,1024,1024,1024,20,200,0.335887,6.39346
2,v6.1,1024,1024,1024,20,200,0.276137,7.77688
3,cuBLAS,1024,1024,1024,20,200,0.16084,13.3517
3,v6,1024,1024,1024,20,200,0.336701,6.37801
3,v6.1,1024,1024,1024,20,200,0.271329,7.91468
3,v5.2,1024,1024,1024,20,200,0.533489,4.02536
4,v6,1024,1024,1024,20,200,0.372198,5.76973
4,v6.1,1024,1024,1024,20,200,0.279578,7.68117
4,v5.2,1024,1024,1024,20,200,0.538936,3.98467
4,cuBLAS,1024,1024,1024,20,200,0.158628,13.5379
5,v6.1,1024,1024,1024,20,200,0.270131,7.94978
5,v5.2,1024,1024,1024,20,200,0.527524,4.07088
5,cuBLAS,1024,1024,1024,20,200,0.158792,13.5239
5,v6,1024,1024,1024,20,200,0.341489,6.28859
6,v5.2,1024,1024,1024,20,200,0.534083,4.02088
6,cuBLAS,1024,1024,1024,20,200,0.159539,13.4605
6,v6,1024,1024,1024,20,200,0.337531,6.36233
6,v6.1,1024,1024,1024,20,200,0.279444,7.68483
7,cuBLAS,1024,1024,1024,20,200,0.16,13.4218
7,v6,1024,1024,1024,20,200,0.337367,6.36542
7,v6.1,1024,1024,1024,20,200,0.280259,7.66251
7,v5.2,1024,1024,1024,20,200,0.531691,4.03897
8,v6,1024,1024,1024,20,200,0.344043,6.2419
8,v6.1,1024,1024,1024,20,200,0.27392,7.83982
8,v5.2,1024,1024,1024,20,200,0.533873,4.02246
8,cuBLAS,1024,1024,1024,20,200,0.160876,13.3487
9,v6.1,1024,1024,1024,20,200,0.277478,7.73928
9,v5.2,1024,1024,1024,20,200,0.551598,3.8932
9,cuBLAS,1024,1024,1024,20,200,0.160625,13.3696
9,v6,1024,1024,1024,20,200,0.337055,6.37132
10,v5.2,1024,1024,1024,20,200,0.539315,3.98187
10,cuBLAS,1024,1024,1024,20,200,0.162801,13.1909
10,v6,1024,1024,1024,20,200,0.351012,6.11798
10,v6.1,1024,1024,1024,20,200,0.283003,7.5882
11,cuBLAS,1024,1024,1024,20,200,0.186813,11.4953
11,v6,1024,1024,1024,20,200,0.365271,5.87915
11,v6.1,1024,1024,1024,20,200,0.291379,7.37006
11,v5.2,1024,1024,1024,20,200,0.558479,3.84523
````

## raw/v61_bench_1.csv

SHA256：`c3521ec7f3b3ac3efdc0cf7dd02b4ae6567c2a4a85e07d3c20d54291331d9db0`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.340838,6.30059
0,v6.1,1024,1024,1024,20,200,0.27711,7.74958
0,v5.2,1024,1024,1024,20,200,0.537375,3.99625
0,cuBLAS,1024,1024,1024,20,200,0.159805,13.4381
1,v6.1,1024,1024,1024,20,200,0.268969,7.98413
1,v5.2,1024,1024,1024,20,200,0.5327,4.03132
1,cuBLAS,1024,1024,1024,20,200,0.15999,13.4226
1,v6,1024,1024,1024,20,200,0.336118,6.38908
2,v5.2,1024,1024,1024,20,200,0.539402,3.98123
2,cuBLAS,1024,1024,1024,20,200,0.160143,13.4098
2,v6,1024,1024,1024,20,200,0.339697,6.32177
2,v6.1,1024,1024,1024,20,200,0.280387,7.65901
3,cuBLAS,1024,1024,1024,20,200,0.162007,13.2555
3,v6,1024,1024,1024,20,200,0.338913,6.33638
3,v6.1,1024,1024,1024,20,200,0.277637,7.73486
3,v5.2,1024,1024,1024,20,200,0.530714,4.04641
4,v6,1024,1024,1024,20,200,0.341402,6.2902
4,v6.1,1024,1024,1024,20,200,0.282547,7.60044
4,v5.2,1024,1024,1024,20,200,0.529925,4.05243
4,cuBLAS,1024,1024,1024,20,200,0.160399,13.3884
5,v6.1,1024,1024,1024,20,200,0.275743,7.788
5,v5.2,1024,1024,1024,20,200,0.570911,3.76151
5,cuBLAS,1024,1024,1024,20,200,0.17152,12.5203
5,v6,1024,1024,1024,20,200,0.353925,6.06762
6,v5.2,1024,1024,1024,20,200,0.569667,3.76972
6,cuBLAS,1024,1024,1024,20,200,0.18455,11.6363
6,v6,1024,1024,1024,20,200,0.363459,5.90847
6,v6.1,1024,1024,1024,20,200,0.283991,7.5618
7,cuBLAS,1024,1024,1024,20,200,0.168054,12.7786
7,v6,1024,1024,1024,20,200,0.366208,5.86411
7,v6.1,1024,1024,1024,20,200,0.29378,7.30982
7,v5.2,1024,1024,1024,20,200,0.555894,3.86312
8,v6,1024,1024,1024,20,200,0.371476,5.78094
8,v6.1,1024,1024,1024,20,200,0.27863,7.70728
8,v5.2,1024,1024,1024,20,200,0.551501,3.89389
8,cuBLAS,1024,1024,1024,20,200,0.160251,13.4008
9,v6.1,1024,1024,1024,20,200,0.278241,7.71806
9,v5.2,1024,1024,1024,20,200,0.533755,4.02335
9,cuBLAS,1024,1024,1024,20,200,0.160891,13.3475
9,v6,1024,1024,1024,20,200,0.339072,6.33342
10,v5.2,1024,1024,1024,20,200,0.529249,4.0576
10,cuBLAS,1024,1024,1024,20,200,0.160671,13.3657
10,v6,1024,1024,1024,20,200,0.338289,6.34808
10,v6.1,1024,1024,1024,20,200,0.282629,7.59824
11,cuBLAS,1024,1024,1024,20,200,0.162058,13.2513
11,v6,1024,1024,1024,20,200,0.338811,6.3383
11,v6.1,1024,1024,1024,20,200,0.277693,7.73329
11,v5.2,1024,1024,1024,20,200,0.543319,3.95253
````

## raw/v61_bench_2.csv

SHA256：`6e1b4b88222a213d13ae3a160ac183b0304f0d18dd2f3a3c598e1fc6af131025`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.342287,6.27392
0,v6.1,1024,1024,1024,20,200,0.270551,7.93744
0,v5.2,1024,1024,1024,20,200,0.5491,3.91092
0,cuBLAS,1024,1024,1024,20,200,0.165934,12.9418
1,v6.1,1024,1024,1024,20,200,0.293484,7.31722
1,v5.2,1024,1024,1024,20,200,0.568806,3.77542
1,cuBLAS,1024,1024,1024,20,200,0.174341,12.3177
1,v6,1024,1024,1024,20,200,0.358451,5.99101
2,v5.2,1024,1024,1024,20,200,0.5694,3.77148
2,cuBLAS,1024,1024,1024,20,200,0.171919,12.4912
2,v6,1024,1024,1024,20,200,0.372372,5.76703
2,v6.1,1024,1024,1024,20,200,0.296023,7.25445
3,cuBLAS,1024,1024,1024,20,200,0.167813,12.7969
3,v6,1024,1024,1024,20,200,0.364718,5.88806
3,v6.1,1024,1024,1024,20,200,0.30164,7.11937
3,v5.2,1024,1024,1024,20,200,0.532465,4.0331
4,v6,1024,1024,1024,20,200,0.354749,6.05352
4,v6.1,1024,1024,1024,20,200,0.277903,7.72745
4,v5.2,1024,1024,1024,20,200,0.532157,4.03543
4,cuBLAS,1024,1024,1024,20,200,0.160799,13.3551
5,v6.1,1024,1024,1024,20,200,0.271109,7.9211
5,v5.2,1024,1024,1024,20,200,0.533632,4.02428
5,cuBLAS,1024,1024,1024,20,200,0.160379,13.3901
5,v6,1024,1024,1024,20,200,0.340557,6.3058
6,v5.2,1024,1024,1024,20,200,0.538813,3.98558
6,cuBLAS,1024,1024,1024,20,200,0.160614,13.3704
6,v6,1024,1024,1024,20,200,0.341304,6.29199
6,v6.1,1024,1024,1024,20,200,0.279419,7.68554
7,cuBLAS,1024,1024,1024,20,200,0.161761,13.2756
7,v6,1024,1024,1024,20,200,0.341704,6.28464
7,v6.1,1024,1024,1024,20,200,0.278405,7.71352
7,v5.2,1024,1024,1024,20,200,0.5395,3.98051
8,v6,1024,1024,1024,20,200,0.34389,6.24468
8,v6.1,1024,1024,1024,20,200,0.272031,7.89427
8,v5.2,1024,1024,1024,20,200,0.530437,4.04852
8,cuBLAS,1024,1024,1024,20,200,0.163267,13.1532
9,v6.1,1024,1024,1024,20,200,0.279439,7.68497
9,v5.2,1024,1024,1024,20,200,0.536893,3.99983
9,cuBLAS,1024,1024,1024,20,200,0.161101,13.3301
9,v6,1024,1024,1024,20,200,0.341519,6.28803
10,v5.2,1024,1024,1024,20,200,0.532357,4.03392
10,cuBLAS,1024,1024,1024,20,200,0.15488,13.8655
10,v6,1024,1024,1024,20,200,0.340705,6.30305
10,v6.1,1024,1024,1024,20,200,0.278405,7.71352
11,cuBLAS,1024,1024,1024,20,200,0.162959,13.178
11,v6,1024,1024,1024,20,200,0.350295,6.1305
11,v6.1,1024,1024,1024,20,200,0.279967,7.6705
11,v5.2,1024,1024,1024,20,200,0.53846,3.98819
````

## raw/v61_build.log

SHA256：`8662a92059b8867434b8e3cae7678dc8905c7bdbec434adec1e33c8c0552682a`

````text
[ 25%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v1.cu.o
[ 25%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v0.cu.o
[ 25%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
[ 33%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v2.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v0_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v0_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 26 registers, used 0 barriers, 388 bytes cmem[0]
ptxas info    : Compile time = 24.533 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v1_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v1_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 35 registers, used 1 barriers, 1024 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 24.417 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v2_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v2_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 40 registers, used 1 barriers, 2048 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 22.988 ms
[ 58%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5.cu.o
[ 58%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v4.cu.o
[ 58%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v3.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v3_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v3_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 43 registers, used 1 barriers, 4608 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 28.955 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 60 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 36.405 ms
ptxas info    : 0 bytes gmem
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 42.460 ms
[ 75%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_2.cu.o
[ 75%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_1.cu.o
[ 83%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 65 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 34.558 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 30.720 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 36.449 ms
[ 91%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_1.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 25.484 ms
[100%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v61_configure.log

SHA256：`c06a9ca4fe44699d7fb47313a3db1c03c3aa684d47054a7c008b15b77cd7437a`

````text
-- Configuring done (5.4s)
-- Generating done (0.0s)
-- Build files have been written to: /home/xu/projects/HGEMM-CUDA/build
````

## raw/v61_large.log

SHA256：`f9af89d4503c9972c6b36780712f8ac8c5bdd24dd01598aed5457270b4507af6`

````text
v6.1,1024,1024,1024,pattern=0,path=native,max_abs=0.00390625,bad=0
v6.1,1024,1024,1024,pattern=1,path=native,max_abs=0.00392016,bad=0
v6.1,1024,1024,1024,pattern=2,path=native,max_abs=0,bad=0
v6.1,1023,1025,1007,pattern=0,path=native,max_abs=0.00390625,bad=0
v6.1,1023,1025,1007,pattern=1,path=native,max_abs=0.00391471,bad=0
v6.1,1023,1025,1007,pattern=2,path=native,max_abs=0,bad=0
````

## raw/v61_memcheck.log

SHA256：`78032a0b5fd9c73936658affdfe1622c5ffe4047af77f2622d5ac2fdc4e32824`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v61_original.log

SHA256：`10ae71489166502b89fc3919dc6c6e9280f3b15241706e4c8623d42d2110e84c`

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

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.5492         0.8424         6.1058
v1 shared               1.9083         1.1253         8.1563
v2 register             0.9708         2.2122        16.0338
v3 register             0.4946         4.3419        31.4700
v4 half2                0.5453         3.9379        28.5419
v5 cp.async             0.4991         4.3027        31.1859
v5.1 double             0.5717         3.7563        27.2255
v5.2 bounds             0.5113         4.2002        30.4426
v6 WMMA                 0.3343         6.4241        46.5615
v6.1 pad                0.3306         6.4957        47.0807
cuBLAS                  0.1556        13.7971       100.0000

v2 / v1 Speedup: 1.9658x
v3 / v2 Speedup: 1.9627x
v3 / v0 Speedup: 5.1541x
v4 / v3 Speedup: 0.9070x
v5 / v4 Speedup: 1.0926x
v5.1 / v5.0 Speedup: 0.8730x
v5.2 / v5.1 Speedup: 1.1182x
````

## raw/v61_profile_cublas.log

SHA256：`b5581653dbe99a74fd8227ca12c03f412efee407561f2ca708cf5fe53cc5f739`

````text
==PROF== Connected to process 28086 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "ampere_fp16_s16816gemm_fp16_2..." - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 28086
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v61_profile_cublas.ncu-rep
````

## raw/v61_profile_v6.log

SHA256：`05e6d62bdafdcb1d452c4b433d3b0ae67e6f8007c6ecd03cd7d5d591d21347a2`

````text
==PROF== Connected to process 27916 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_kernel" - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 27916
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v61_profile_v6.ncu-rep
````

## raw/v61_profile_v6_1.log

SHA256：`fe5dda6d5e504f7244ed1902e459255b27e31b9d2ad44e3a9d3d596b2ce5b812`

````text
==PROF== Connected to process 28001 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_1_kernel" - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 28001
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v61_profile_v6_1.ncu-rep
````

## raw/v61_racecheck.log

SHA256：`65eeeba91969f838256ab13d87291bbf30a39ee5ffc6ddb1528854850718600b`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v61_synccheck.log

SHA256：`78032a0b5fd9c73936658affdfe1622c5ffe4047af77f2622d5ac2fdc4e32824`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v61_test.log

SHA256：`128d63c4f152386a82541ae88f01f4ab232358d2ff99d60513def070998081bc`

````text
v6.1,15,17,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,max_abs=0,bad=0
````

## raw/v62_bench_0.csv

SHA256：`f404418bb68a078d38c5ce3fd415715b75b3efb13a162c672891cc9855e5c8e1`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.337121,6.37006
0,v6.1,1024,1024,1024,20,200,0.278656,7.70658
0,v6.2,1024,1024,1024,20,200,0.142572,15.0625
0,cuBLAS,1024,1024,1024,20,200,0.162473,13.2175
1,v6.1,1024,1024,1024,20,200,0.275246,7.80205
1,v6.2,1024,1024,1024,20,200,0.142761,15.0425
1,cuBLAS,1024,1024,1024,20,200,0.162007,13.2555
1,v6,1024,1024,1024,20,200,0.338058,6.35241
2,v6.2,1024,1024,1024,20,200,0.14698,14.6107
2,cuBLAS,1024,1024,1024,20,200,0.161848,13.2685
2,v6,1024,1024,1024,20,200,0.337167,6.36919
2,v6.1,1024,1024,1024,20,200,0.277908,7.72731
3,cuBLAS,1024,1024,1024,20,200,0.160174,13.4072
3,v6,1024,1024,1024,20,200,0.336251,6.38655
3,v6.1,1024,1024,1024,20,200,0.267878,8.01664
3,v6.2,1024,1024,1024,20,200,0.146365,14.6721
4,v6,1024,1024,1024,20,200,0.375777,5.71478
4,v6.1,1024,1024,1024,20,200,0.318351,6.74564
4,v6.2,1024,1024,1024,20,200,0.171484,12.5229
4,cuBLAS,1024,1024,1024,20,200,0.190659,11.2635
5,v6.1,1024,1024,1024,20,200,0.321295,6.68383
5,v6.2,1024,1024,1024,20,200,0.169231,12.6896
5,cuBLAS,1024,1024,1024,20,200,0.180306,11.9102
5,v6,1024,1024,1024,20,200,0.385664,5.56828
6,v6.2,1024,1024,1024,20,200,0.15679,13.6966
6,cuBLAS,1024,1024,1024,20,200,0.178314,12.0433
6,v6,1024,1024,1024,20,200,0.381307,5.6319
6,v6.1,1024,1024,1024,20,200,0.30527,7.03471
7,cuBLAS,1024,1024,1024,20,200,0.188216,11.4097
7,v6,1024,1024,1024,20,200,0.382602,5.61284
7,v6.1,1024,1024,1024,20,200,0.312008,6.88279
7,v6.2,1024,1024,1024,20,200,0.165489,12.9766
8,v6,1024,1024,1024,20,200,0.393252,5.46084
8,v6.1,1024,1024,1024,20,200,0.303329,7.07971
8,v6.2,1024,1024,1024,20,200,0.161859,13.2677
8,cuBLAS,1024,1024,1024,20,200,0.177582,12.0929
9,v6.1,1024,1024,1024,20,200,0.303478,7.07625
9,v6.2,1024,1024,1024,20,200,0.16874,12.7266
9,cuBLAS,1024,1024,1024,20,200,0.183869,11.6794
9,v6,1024,1024,1024,20,200,0.389417,5.51461
10,v6.2,1024,1024,1024,20,200,0.170624,12.5861
10,cuBLAS,1024,1024,1024,20,200,0.179615,11.9561
10,v6,1024,1024,1024,20,200,0.378875,5.66805
10,v6.1,1024,1024,1024,20,200,0.322033,6.66853
11,cuBLAS,1024,1024,1024,20,200,0.17858,12.0253
11,v6,1024,1024,1024,20,200,0.385859,5.56547
11,v6.1,1024,1024,1024,20,200,0.314803,6.82167
11,v6.2,1024,1024,1024,20,200,0.159043,13.5026
````

## raw/v62_bench_1.csv

SHA256：`f273e9b4e6e40468b1ac1cc10d852ddb08b1b7c15e9726dc78e771c0bbe7217a`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.341837,6.28219
0,v6.1,1024,1024,1024,20,200,0.275999,7.78077
0,v6.2,1024,1024,1024,20,200,0.148035,14.5066
0,cuBLAS,1024,1024,1024,20,200,0.161055,13.3339
1,v6.1,1024,1024,1024,20,200,0.269332,7.97336
1,v6.2,1024,1024,1024,20,200,0.141624,15.1632
1,cuBLAS,1024,1024,1024,20,200,0.167311,12.8353
1,v6,1024,1024,1024,20,200,0.338499,6.34414
2,v6.2,1024,1024,1024,20,200,0.1406,15.2737
2,cuBLAS,1024,1024,1024,20,200,0.160655,13.367
2,v6,1024,1024,1024,20,200,0.341494,6.2885
2,v6.1,1024,1024,1024,20,200,0.278502,7.71083
3,cuBLAS,1024,1024,1024,20,200,0.162765,13.1938
3,v6,1024,1024,1024,20,200,0.339779,6.32025
3,v6.1,1024,1024,1024,20,200,0.27842,7.7131
3,v6.2,1024,1024,1024,20,200,0.144492,14.8624
4,v6,1024,1024,1024,20,200,0.359188,5.97871
4,v6.1,1024,1024,1024,20,200,0.291896,7.35701
4,v6.2,1024,1024,1024,20,200,0.156329,13.737
4,cuBLAS,1024,1024,1024,20,200,0.160722,13.3615
5,v6.1,1024,1024,1024,20,200,0.285148,7.53111
5,v6.2,1024,1024,1024,20,200,0.157839,13.6055
5,cuBLAS,1024,1024,1024,20,200,0.171853,12.4961
5,v6,1024,1024,1024,20,200,0.364293,5.89493
6,v6.2,1024,1024,1024,20,200,0.155054,13.8499
6,cuBLAS,1024,1024,1024,20,200,0.164465,13.0574
6,v6,1024,1024,1024,20,200,0.361027,5.94827
6,v6.1,1024,1024,1024,20,200,0.293048,7.32809
7,cuBLAS,1024,1024,1024,20,200,0.170573,12.5898
7,v6,1024,1024,1024,20,200,0.369894,5.80567
7,v6.1,1024,1024,1024,20,200,0.291942,7.35585
7,v6.2,1024,1024,1024,20,200,0.143314,14.9845
8,v6,1024,1024,1024,20,200,0.357658,6.0043
8,v6.1,1024,1024,1024,20,200,0.279332,7.68793
8,v6.2,1024,1024,1024,20,200,0.136049,15.7847
8,cuBLAS,1024,1024,1024,20,200,0.167112,12.8506
9,v6.1,1024,1024,1024,20,200,0.272246,7.88803
9,v6.2,1024,1024,1024,20,200,0.141793,15.1452
9,cuBLAS,1024,1024,1024,20,200,0.170573,12.5898
9,v6,1024,1024,1024,20,200,0.350623,6.12477
10,v6.2,1024,1024,1024,20,200,0.141722,15.1528
10,cuBLAS,1024,1024,1024,20,200,0.15785,13.6046
10,v6,1024,1024,1024,20,200,0.340843,6.3005
10,v6.1,1024,1024,1024,20,200,0.283715,7.56917
11,cuBLAS,1024,1024,1024,20,200,0.162176,13.2417
11,v6,1024,1024,1024,20,200,0.340029,6.31558
11,v6.1,1024,1024,1024,20,200,0.285696,7.51667
11,v6.2,1024,1024,1024,20,200,0.143416,14.9738
````

## raw/v62_bench_2.csv

SHA256：`38fbce42b7fd9ee3b40f407f5bc95bb8f77bf453a1a8e3ef028d31be2a49b402`

````text
round,kernel,M,N,K,warmup,repeat,ms,tflops
0,v6,1024,1024,1024,20,200,0.337096,6.37055
0,v6.1,1024,1024,1024,20,200,0.266921,8.04539
0,v6.2,1024,1024,1024,20,200,0.139505,15.3936
0,cuBLAS,1024,1024,1024,20,200,0.159252,13.4848
1,v6.1,1024,1024,1024,20,200,0.278723,7.70474
1,v6.2,1024,1024,1024,20,200,0.141179,15.2111
1,cuBLAS,1024,1024,1024,20,200,0.159391,13.4731
1,v6,1024,1024,1024,20,200,0.337418,6.36446
2,v6.2,1024,1024,1024,20,200,0.142582,15.0614
2,cuBLAS,1024,1024,1024,20,200,0.166487,12.8988
2,v6,1024,1024,1024,20,200,0.345892,6.20854
2,v6.1,1024,1024,1024,20,200,0.271611,7.90647
3,cuBLAS,1024,1024,1024,20,200,0.161275,13.3157
3,v6,1024,1024,1024,20,200,0.345037,6.22393
3,v6.1,1024,1024,1024,20,200,0.266952,8.04447
3,v6.2,1024,1024,1024,20,200,0.143124,15.0043
4,v6,1024,1024,1024,20,200,0.348109,6.169
4,v6.1,1024,1024,1024,20,200,0.268216,8.00654
4,v6.2,1024,1024,1024,20,200,0.146765,14.6321
4,cuBLAS,1024,1024,1024,20,200,0.161075,13.3322
5,v6.1,1024,1024,1024,20,200,0.274299,7.82899
5,v6.2,1024,1024,1024,20,200,0.140795,15.2526
5,cuBLAS,1024,1024,1024,20,200,0.163922,13.1006
5,v6,1024,1024,1024,20,200,0.34388,6.24487
6,v6.2,1024,1024,1024,20,200,0.13442,15.9759
6,cuBLAS,1024,1024,1024,20,200,0.164977,13.0169
6,v6,1024,1024,1024,20,200,0.338161,6.35048
6,v6.1,1024,1024,1024,20,200,0.274775,7.81542
7,cuBLAS,1024,1024,1024,20,200,0.154767,13.8756
7,v6,1024,1024,1024,20,200,0.344238,6.23837
7,v6.1,1024,1024,1024,20,200,0.274714,7.81717
7,v6.2,1024,1024,1024,20,200,0.143171,14.9995
8,v6,1024,1024,1024,20,200,0.340388,6.30893
8,v6.1,1024,1024,1024,20,200,0.274053,7.83601
8,v6.2,1024,1024,1024,20,200,0.141046,15.2254
8,cuBLAS,1024,1024,1024,20,200,0.1615,13.2971
9,v6.1,1024,1024,1024,20,200,0.274637,7.81936
9,v6.2,1024,1024,1024,20,200,0.132741,16.178
9,cuBLAS,1024,1024,1024,20,200,0.155162,13.8403
9,v6,1024,1024,1024,20,200,0.337044,6.37151
10,v6.2,1024,1024,1024,20,200,0.142991,15.0183
10,cuBLAS,1024,1024,1024,20,200,0.158945,13.5108
10,v6,1024,1024,1024,20,200,0.337956,6.35433
10,v6.1,1024,1024,1024,20,200,0.275113,7.80583
11,cuBLAS,1024,1024,1024,20,200,0.162683,13.2004
11,v6,1024,1024,1024,20,200,0.335693,6.39717
11,v6.1,1024,1024,1024,20,200,0.275082,7.8067
11,v6.2,1024,1024,1024,20,200,0.142843,15.0339
````

## raw/v62_build.log

SHA256：`cd8e124d6d1012012eceba57e2eaa9f698b1b9322941a992427649ee5b88817d`

````text
[ 30%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
[ 30%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v0.cu.o
[ 30%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v2.cu.o
[ 30%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v1.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v0_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v0_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 26 registers, used 0 barriers, 388 bytes cmem[0]
ptxas info    : Compile time = 4.849 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v1_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v1_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 35 registers, used 1 barriers, 1024 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 5.666 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v2_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v2_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 40 registers, used 1 barriers, 2048 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 10.706 ms
[ 38%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v3.cu.o
[ 46%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v4.cu.o
[ 53%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_Z15hgemm_v3_kernelPK6__halfS1_PS_iii' for 'sm_86'
ptxas info    : Function properties for _Z15hgemm_v3_kernelPK6__halfS1_PS_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 43 registers, used 1 barriers, 4608 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 26.963 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v415hgemm_v4_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 60 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 40.915 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v515hgemm_v5_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 4096 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 31.086 ms
ptxas info    : 0 bytes gmem
[ 61%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_1.cu.o
[ 69%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v5_2.cu.o
[ 76%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_117hgemm_v5_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 65 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 34.513 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v5_217hgemm_v5_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 64 registers, used 1 barriers, 8192 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 30.273 ms
[ 84%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_1.cu.o
[ 92%] Building CUDA object CMakeFiles/bench_hgemm.dir/kernels/hgemm_v6_2.cu.o
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN8hgemm_v615hgemm_v6_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 33.113 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_117hgemm_v6_1_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 70 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 24.670 ms
ptxas info    : 0 bytes gmem
ptxas info    : Compiling entry function '_ZN10hgemm_v6_217hgemm_v6_2_kernelEPK6__halfS2_PS0_iii' for 'sm_86'
ptxas info    : Function properties for _ZN10hgemm_v6_217hgemm_v6_2_kernelEPK6__halfS2_PS0_iii
    0 bytes stack frame, 0 bytes spill stores, 0 bytes spill loads
ptxas info    : Used 56 registers, used 1 barriers, 16384 bytes smem, 388 bytes cmem[0]
ptxas info    : Compile time = 16.701 ms
[100%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v62_configure.log

SHA256：`2972aff878ff1aa3da3b97d9fb59c8f7607100f93c8c5e20c8f6b0aa7fe9f0bf`

````text
-- Configuring done (5.5s)
-- Generating done (0.0s)
-- Build files have been written to: /home/xu/projects/HGEMM-CUDA/build
````

## raw/v62_failure_racecheck.log

SHA256：`4f14dcca27f1168d62c12ab3d9a65cee02aaf25a6f666091e1542f73e598bc44`

````text
========= COMPUTE-SANITIZER
v6.2,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.2,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.2,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v62_large.log

SHA256：`b55b26b0e77971193071f60138cae60bd34a2e3ff4cf327482a9e84068f60615`

````text
v6.2,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=4.8052,bad=489318
v6.2,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.265625,bad=127
v6.2,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=1.20756,bad=71737
v6.2,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_memcheck.log

SHA256：`ba02c070e06a533b090e4fae54cdfd2db0e93e5c9e3d839bc4af7aa24cfc20fc`

````text
========= COMPUTE-SANITIZER
v6.2,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v62_original.log

SHA256：`5512a73d5988f6f069f95f6a9a541b8a4660a484dce1822b55e03ca35b6dd568`

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

Kernel             Latency(ms)         TFLOPS       % cuBLAS
------------------------------------------------------------
v0 naive                2.6385         0.8139         5.9515
v1 shared               1.9368         1.1088         8.1078
v2 register             0.9404         2.2836        16.6984
v3 register             0.4962         4.3280        31.6479
v4 half2                0.5107         4.2048        30.7469
v5 cp.async             0.5111         4.2019        30.7253
v5.1 double             0.5891         3.6456        26.6580
v5.2 bounds             0.5955         3.6061        26.3692
v6 WMMA                 0.3348         6.4143        46.9032
v6.1 pad                0.3439         6.2443        45.6603
v6.2 vector             0.1352        15.8815       116.1303
cuBLAS                  0.1570        13.6756       100.0000

v2 / v1 Speedup: 2.0596x
v3 / v2 Speedup: 1.8953x
v3 / v0 Speedup: 5.3176x
v4 / v3 Speedup: 0.9715x
v5 / v4 Speedup: 0.9993x
v5.1 / v5.0 Speedup: 0.8676x
v5.2 / v5.1 Speedup: 0.9892x
````

## raw/v62_profile_cublas.log

SHA256：`a8942e6d35f904a2164309e622554515cb1c4b26804633cb7f1f11f15d0a8f6b`

````text
==PROF== Connected to process 29906 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "ampere_fp16_s16816gemm_fp16_2..." - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 29906
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v62_profile_cublas.ncu-rep
````

## raw/v62_profile_v6.log

SHA256：`452eee1280312a2011fe83d63b640267b1cfc660d3e107005976dbae053e465f`

````text
==PROF== Connected to process 29644 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_kernel" - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 29644
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v62_profile_v6.ncu-rep
````

## raw/v62_profile_v6_1.log

SHA256：`22863387778dbe6ececabfb1db5dbc2515647ef5c32c387169c1d1e27ca20b7d`

````text
==PROF== Connected to process 29736 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_1_kernel" - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 29736
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v62_profile_v6_1.ncu-rep
````

## raw/v62_profile_v6_2.log

SHA256：`e6b4b0d1394ba8fec8562801472c69fef68aa70001084a5513d7fe1133a88992`

````text
==PROF== Connected to process 29821 (/home/xu/projects/HGEMM-CUDA/build/bench_hgemm)
==PROF== Profiling "hgemm_v6_2_kernel" - 0 (1/1): 0%....50%....100% - 33 passes
==PROF== Disconnected from process 29821
==PROF== Report: /home/xu/projects/HGEMM-CUDA/build/v62_profile_v6_2.ncu-rep
````

## raw/v62_racecheck.log

SHA256：`40964664b31dd65ff02276e8011165e0e1e9a54a13bdc9102d628321c2de081b`

````text
========= COMPUTE-SANITIZER
v6.2,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v62_recheck_large_v6-1.log

SHA256：`d0de11868b3e9b3c5d07befcac1d10c5821e3ec0a6659715c435f824c77d3eb5`

````text
v6.1,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.1,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.1,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.1,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.1,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_recheck_large_v6.log

SHA256：`c03c2620c29266499f5de1652329fb2b0ad0b4c205a1c57ca31761a6526f422e`

````text
v6,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_recheck_v6-1.log

SHA256：`544a609cbecf5dbbe7fc4422af5d20be16c7e979f3e860ad7b4e92d927730478`

````text
v6.1,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_recheck_v6.log

SHA256：`10685bdd92b8b6eef3b98b5e1b8338284528b1a6a764a8739a8769e2e33419fa`

````text
v6,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_recheck_v61_memcheck.log

SHA256：`b957672045136b3268a2c24af49c2d14684ef79ed80afb141577be4e1b58a41f`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v62_recheck_v61_racecheck.log

SHA256：`1d493c08a82e5ddc7f420f4b65df1ce016a118f21f5f92e3b0fd32b4c941c3ca`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
========= RACECHECK SUMMARY: 0 hazards displayed (0 errors, 0 warnings)
````

## raw/v62_recheck_v61_synccheck.log

SHA256：`b957672045136b3268a2c24af49c2d14684ef79ed80afb141577be4e1b58a41f`

````text
========= COMPUTE-SANITIZER
v6.1,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.1,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.1,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.1,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.1,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.1,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.1,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.1,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.1,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.1,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.1,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.1,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.1,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.1,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.1,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.1,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.1,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.1,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.1,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.1,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v62_stream_fix_build.log

SHA256：`2a0762fed1d99dbcf18bb88a75d0db075f27ad560c770aa5e9c2a4f590cda0b4`

````text
[  7%] Building CUDA object CMakeFiles/bench_hgemm.dir/benchmark/bench_hgemm.cu.o
ptxas info    : 0 bytes gmem
[ 15%] Linking CUDA executable bench_hgemm
[100%] Built target bench_hgemm
````

## raw/v62_stream_fix_large_0.log

SHA256：`beb85652c175bf411b4d6e94c00b433bad25552353c424c5934447c225a4444e`

````text
v6.2,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.2,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.2,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_stream_fix_large_1.log

SHA256：`beb85652c175bf411b4d6e94c00b433bad25552353c424c5934447c225a4444e`

````text
v6.2,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.2,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.2,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_stream_fix_large_2.log

SHA256：`beb85652c175bf411b4d6e94c00b433bad25552353c424c5934447c225a4444e`

````text
v6.2,1024,1024,1024,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1024,1024,1024,pattern=1,path=native,input_offset_half=0,max_abs=0.00392016,bad=0
v6.2,1024,1024,1024,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1023,1025,1007,pattern=0,path=native,input_offset_half=0,max_abs=0.00390625,bad=0
v6.2,1023,1025,1007,pattern=1,path=native,input_offset_half=0,max_abs=0.00391471,bad=0
v6.2,1023,1025,1007,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
````

## raw/v62_stream_fix_test.log

SHA256：`13b439308607e0722f074cde2e77848de130e869924d56bbc21ab6432c535176`

````text
v6.2,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
````

## raw/v62_synccheck.log

SHA256：`ba02c070e06a533b090e4fae54cdfd2db0e93e5c9e3d839bc4af7aa24cfc20fc`

````text
========= COMPUTE-SANITIZER
v6.2,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
========= ERROR SUMMARY: 0 errors
````

## raw/v62_test.log

SHA256：`13b439308607e0722f074cde2e77848de130e869924d56bbc21ab6432c535176`

````text
v6.2,15,17,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000238952,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,15,17,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000232333,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,16,16,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000232916,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,17,15,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000484448,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,32,32,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000487417,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,33,31,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=0,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=1,path=native,input_offset_half=1,max_abs=4.31202e-07,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,1,1,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=0,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=1,path=native,input_offset_half=1,max_abs=1.06478e-05,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,1,2,2,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=0,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=1,path=native,input_offset_half=1,max_abs=0.000414755,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,31,33,17,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=0,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=1,path=native,input_offset_half=1,max_abs=0.000475515,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,62,14,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=0,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=1,path=native,input_offset_half=1,max_abs=0.000485771,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,64,64,16,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=0,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=1,path=native,input_offset_half=1,max_abs=0.000479314,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,18,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=0,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=1,path=native,input_offset_half=1,max_abs=0.000487468,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,32,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=0,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=1,path=native,input_offset_half=1,max_abs=0.000486727,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,128,128,34,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=0,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=1,path=native,input_offset_half=1,max_abs=0.000889073,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,48,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=0,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=1,path=native,input_offset_half=1,max_abs=0.000682712,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,66,50,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=0,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=1,path=native,input_offset_half=1,max_abs=0.000466883,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,65,15,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=0,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=1,path=native,input_offset_half=1,max_abs=0.000486118,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,63,33,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=0,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=1,path=native,input_offset_half=1,max_abs=0.000976846,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,129,130,66,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=0,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=1,path=native,input_offset_half=1,max_abs=0.0004857,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,40,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=0,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=1,path=native,input_offset_half=1,max_abs=0.000242593,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,63,64,8,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=0,path=native,input_offset_half=1,max_abs=0,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=0,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=1,path=native,input_offset_half=1,max_abs=0.000472344,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=0,max_abs=0,bad=0
v6.2,65,72,24,pattern=2,path=native,input_offset_half=1,max_abs=0,bad=0
````
