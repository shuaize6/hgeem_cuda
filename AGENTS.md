# HGEMM-CUDA repository guidance for Codex

- Read `CODEX_HANDOFF_HGEMM.md` for the project's experimental history, metrics and current task. Treat that document as a handoff summary, not as proof of the current source contents.
- Primary workspace: C++ / CUDA HGEMM on WSL2 RTX 3060 Laptop (sm_86). Check actual compiler, GPU, CMake, build targets and files before proposing edits.
- Communicate with the user in Chinese. Explain the reason, memory/thread mapping, and expected profile effect before making significant CUDA kernel changes. Work incrementally: hypothesis -> minimal change -> correctness -> timing without NCU -> NCU analysis.
- Preserve versions v0 through v5.1 as independent baselines. Do not silently overwrite earlier kernels, results or benchmark configurations. Inspect `git status` and existing diffs before modifying files.
- Correctness precedes optimization. Test odd M/N/K sizes, short K, Tile boundaries and asynchronous synchronization. Never claim a kernel is correct without testing; do not treat a loose cuBLAS tolerance check as exhaustive validation.
- Be precise about `cp.async` semantics: its commit/wait groups are per thread; `wait_group` is not a block-wide barrier. Review producer/consumer buffer lifetime, `__syncthreads()`, alignment and masking, and use compute-sanitizer where available.
- Keep benchmark results and Nsight Compute measurements separate. Report repeat count, matrix dimensions, latency, TFLOPS, GPU/toolchain conditions, and uncertainty. Do not equate bank-conflict counts or stall proportions with the kernel's end-to-end time cost.
- The immediate next goal is to review the existing v5.1 double-buffer kernel for correctness and explain why it has not shown stable improvement over v4. Run a plan-first review before modifying or benchmarking unless the user explicitly asks otherwise.
