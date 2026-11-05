
#include <cuda_runtime.h>
#include <cuda_fp16.h>
#include <cublas_v2.h>

#include <algorithm>
#include <array>
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "hgemm.cuh"

#define CUDA_CHECK(call)                                                     \
    do                                                                       \
    {                                                                        \
        cudaError_t err = (call);                                            \
        if (err != cudaSuccess)                                              \
        {                                                                    \
            std::cerr << "CUDA error: " << cudaGetErrorString(err)           \
                      << " at " << __FILE__ << ":" << __LINE__ << std::endl; \
            std::exit(EXIT_FAILURE);                                         \
        }                                                                    \
    } while (0)

#define CUBLAS_CHECK(call)                                                   \
    do                                                                       \
    {                                                                        \
        cublasStatus_t status = (call);                                      \
        if (status != CUBLAS_STATUS_SUCCESS)                                 \
        {                                                                    \
            std::cerr << "cuBLAS error: " << static_cast<int>(status)        \
                      << " at " << __FILE__ << ":" << __LINE__ << std::endl; \
            std::exit(EXIT_FAILURE);                                         \
        }                                                                    \
    } while (0)

template <typename Func>
float benchmark(Func &&func, int warmup = 5, int repeat = 20)
{
    for (int i = 0; i < warmup; ++i)
        func();
    CUDA_CHECK(cudaDeviceSynchronize());

    cudaEvent_t start, stop;
    CUDA_CHECK(cudaEventCreate(&start));
    CUDA_CHECK(cudaEventCreate(&stop));

    CUDA_CHECK(cudaEventRecord(start));
    for (int i = 0; i < repeat; ++i)
        func();
    CUDA_CHECK(cudaEventRecord(stop));
    CUDA_CHECK(cudaEventSynchronize(stop));

    float total_ms = 0.0f;
    CUDA_CHECK(cudaEventElapsedTime(&total_ms, start, stop));

    CUDA_CHECK(cudaEventDestroy(start));
    CUDA_CHECK(cudaEventDestroy(stop));

    return total_ms / repeat;
}

void run_cublas(cublasHandle_t handle,
                const half *A, const half *B, half *C,
                int M, int N, int K)
{
    const float alpha = 1.0f, beta = 0.0f;

    // Row-major C = A * B
    // cuBLAS 使用 column-major，因此利用 C^T = B^T * A^T
    CUBLAS_CHECK(cublasGemmEx(
        handle, CUBLAS_OP_N, CUBLAS_OP_N,
        N, M, K,
        &alpha, B, CUDA_R_16F, N,
        A, CUDA_R_16F, K,
        &beta, C, CUDA_R_16F, N,
        CUBLAS_COMPUTE_32F, CUBLAS_GEMM_DEFAULT));
}

// 数值正确性检查：绝对误差 + 相对误差容限
bool check_correctness(const std::string &name,
                       const std::vector<half> &output,
                       const std::vector<half> &reference)
{
    const double atol = 1e-2;
    const double rtol = 1e-2;

    double max_error = 0.0, mean_error = 0.0;
    size_t failed_count = 0;

    for (size_t i = 0; i < output.size(); ++i)
    {
        double value = __half2float(output[i]);
        double ref = __half2float(reference[i]);
        double error = std::abs(value - ref);

        if (!std::isfinite(value) || !std::isfinite(ref))
        {
            ++failed_count;
            continue;
        }

        max_error = std::max(max_error, error);
        mean_error += error;

        if (error > atol + rtol * std::abs(ref))
            ++failed_count;
    }

    mean_error /= output.size();

    bool passed = (failed_count == 0);

    std::cout << std::left << std::setw(12) << name
              << " Max error: " << max_error
              << ", Mean error: " << mean_error
              << ", Failed: " << failed_count
              << (passed ? " [PASS]" : " [FAIL]") << '\n';

    return passed;
}

// 统一输出每个 Kernel 的性能数据
void print_result(const std::string &name, float ms,
                  double operations, float cublas_ms)
{
    double tflops = operations / (ms * 1e9);
    double ratio = cublas_ms / ms * 100.0;

    std::cout << std::left << std::setw(15) << name
              << std::right << std::setw(15) << ms
              << std::setw(15) << tflops
              << std::setw(15) << ratio << '\n';
}

// ============================================================
// 扩展验证、交错计时与单 kernel Profile，复用同一 bench_hgemm 目标
// ============================================================
namespace hgemm_validation
{
using Launch = void (*)(const half *, const half *, half *, int, int, int, cudaStream_t);
Launch launches[] = {launch_hgemm_v4, launch_hgemm_v5, launch_hgemm_v5_1, launch_hgemm_v5_2, launch_hgemm_v6, launch_hgemm_v6_1, launch_hgemm_v6_2, launch_hgemm_v6_3};
const char *names[] = {"v4", "v5", "v5.1", "v5.2", "v6", "v6.1", "v6.2", "v6.3"};

struct Matrix
{
    int m, n, k;
    std::vector<half> a, b, c;
    half *da{}, *db{}, *dc{};
    half *allocation_a{}, *allocation_b{};
    int input_offset;
    cudaStream_t stream{};
    Matrix(int M, int N, int K, int pattern, int offset = 0)
        : m(M), n(N), k(K), a(size_t(M) * K), b(size_t(K) * N), c(size_t(M) * N), input_offset(offset)
    {
        std::mt19937 rng(42 + pattern);
        std::uniform_real_distribution<float> dist(-0.5f, 0.5f);
        auto fill = [&](std::vector<half> &v) {
            for (size_t i = 0; i < v.size(); ++i)
            {
                float x = pattern == 0   ? (int(rng() % 17) - 8) / 16.f
                          : pattern == 1 ? dist(rng)
                                         : (i % 2 ? -0.25f : 0.25f);
                v[i] = __float2half_rn(x);
            }
        };
        fill(a);
        fill(b);
        CUDA_CHECK(cudaStreamCreateWithFlags(&stream, cudaStreamNonBlocking));
        CUDA_CHECK(cudaMalloc(&allocation_a, (a.size() + offset) * sizeof(half)));
        da = allocation_a + offset;
        CUDA_CHECK(cudaMalloc(&allocation_b, (b.size() + offset) * sizeof(half)));
        db = allocation_b + offset;
        CUDA_CHECK(cudaMalloc(&dc, c.size() * 2));
        // 与后续 kernel 使用同一 nonblocking stream，显式建立 H2D -> kernel 顺序。
        // Pageable cudaMemcpy 返回时 DMA 可能尚未完成，不能依赖默认 stream 隐式同步。
        CUDA_CHECK(cudaMemcpyAsync(da, a.data(), a.size() * 2, cudaMemcpyHostToDevice, stream));
        CUDA_CHECK(cudaMemcpyAsync(db, b.data(), b.size() * 2, cudaMemcpyHostToDevice, stream));
    }
    ~Matrix()
    {
        CUDA_CHECK(cudaFree(allocation_a));
        CUDA_CHECK(cudaFree(allocation_b));
        CUDA_CHECK(cudaFree(dc));
        CUDA_CHECK(cudaStreamDestroy(stream));
    }
    void run(int v)
    {
        launches[v](da, db, dc, m, n, k, stream);
        CUDA_CHECK(cudaGetLastError());
    }
    bool check(int v, int pattern)
    {
        CUDA_CHECK(
            cudaMemsetAsync(dc, 0xff, c.size() * 2, stream)); // NaN poison detects missing writes.
        run(v);
        CUDA_CHECK(cudaStreamSynchronize(stream));
        CUDA_CHECK(cudaMemcpy(c.data(), dc, c.size() * 2, cudaMemcpyDeviceToHost));
        size_t bad = 0;
        double maxerr = 0;
        // 使用量化后的 FP16 输入，逐元素计算 CPU double 参考值。
        std::vector<double> ref(c.size(), 0), absum(c.size(), 0);
        for (int r = 0; r < m; ++r)
            for (int t = 0; t < k; ++t)
            {
                double av = __half2float(a[size_t(r) * k + t]);
                for (int col = 0; col < n; ++col)
                {
                    double prod = av * __half2float(b[size_t(t) * n + col]);
                    ref[size_t(r) * n + col] += prod;
                    absum[size_t(r) * n + col] += std::abs(prod);
                }
            }
        for (size_t i = 0; i < c.size(); ++i)
        {
            double got = __half2float(c[i]);
            double err = std::abs(got - ref[i]);
            maxerr = std::max(maxerr, err);
            // gamma_K bound for FP32 accumulation + FP16 output rounding.
            double gamma = (k * 0x1p-24) / (1 - k * 0x1p-24);
            double tol = gamma * absum[i] + 0x1p-11 * std::abs(ref[i]) + 0x1p-25;
            // Dyadic inputs have exact FP32 sums at these sizes: require exact half result.
            bool ok =
                pattern != 1 ? got == __half2float(__float2half_rn(float(ref[i]))) : err <= tol;
            if (!std::isfinite(got) || !ok)
                ++bad;
        }
        std::cout << names[v] << "," << m << "," << n << "," << k << ",pattern=" << pattern
                  << ",path=" << ((v == 2 || v == 3) && ((n | k) & 1) ? "v5_scalar_fallback" : "native")
                  << ",input_offset_half=" << input_offset << ",max_abs=" << maxerr << ",bad=" << bad << std::endl;
        return bad == 0;
    }
};

// Tensor Core 阶段：同一 stream、输入、输出类型，交错比较自写 kernel 与 cuBLAS。
int benchmark_v6(int experiment = 0)
{
    Matrix x(1024, 1024, 1024, 0);
    cublasHandle_t handle;
    CUBLAS_CHECK(cublasCreate(&handle));
    CUBLAS_CHECK(cublasSetMathMode(handle, CUBLAS_DEFAULT_MATH));
    CUBLAS_CHECK(cublasSetStream(handle, x.stream));

    const char *labels[] = {"v4", "v5.2", "v6", "cuBLAS"};
    int versions[] = {0, 3, 4};
    if (experiment == 1)
    {
        labels[0] = "v6"; labels[1] = "v6.1"; labels[2] = "v5.2";
        versions[0] = 4; versions[1] = 5; versions[2] = 3;
    }
    if (experiment == 2)
    {
        labels[0] = "v6"; labels[1] = "v6.1"; labels[2] = "v6.2";
        versions[0] = 4; versions[1] = 5; versions[2] = 6;
    }
    auto launch = [&](int v) {
        if (v == 3)
            run_cublas(handle, x.da, x.db, x.dc, x.m, x.n, x.k);
        else
            x.run(versions[v]);
    };
    for (int i = 0; i < 4000; ++i)
        launch(i % 4);
    CUDA_CHECK(cudaStreamSynchronize(x.stream));

    cudaEvent_t start, stop;
    CUDA_CHECK(cudaEventCreate(&start));
    CUDA_CHECK(cudaEventCreate(&stop));
    std::cout << "round,kernel,M,N,K,warmup,repeat,ms,tflops\n";
    for (int round = 0; round < 12; ++round)
    {
        for (int position = 0; position < 4; ++position)
        {
            int v = (position + round) % 4;
            for (int i = 0; i < 20; ++i)
                launch(v);
            CUDA_CHECK(cudaEventRecord(start, x.stream));
            for (int i = 0; i < 200; ++i)
                launch(v);
            CUDA_CHECK(cudaEventRecord(stop, x.stream));
            CUDA_CHECK(cudaEventSynchronize(stop));
            float ms;
            CUDA_CHECK(cudaEventElapsedTime(&ms, start, stop));
            ms /= 200;
            std::cout << round << "," << labels[v] << ",1024,1024,1024,20,200," << ms
                      << "," << 2.0 * x.m * x.n * x.k / (ms * 1e9) << '\n';
        }
    }
    CUDA_CHECK(cudaEventDestroy(start));
    CUDA_CHECK(cudaEventDestroy(stop));
    CUBLAS_CHECK(cublasDestroy(handle));
    return 0;
}

// 多尺寸实验沿用默认 cuBLAS；计时前做精确 dyadic 对照及 CPU 抽样。
int benchmark_sizes()
{
    const std::array<int, 3> shapes[] = {
        {512, 512, 512}, {1024, 1024, 1024}, {2048, 2048, 2048}, {4096, 4096, 4096},
        {512, 2048, 1024}, {2048, 512, 1024}, {1024, 1024, 64}, {1023, 1025, 1007}};
    const int versions[] = {6, 7};
    constexpr int count = sizeof(versions) / sizeof(int) + 1;
    std::cout << "round,kernel,M,N,K,warmup,repeat,ms,tflops\n";
    for (auto shape : shapes)
    {
        Matrix x(shape[0], shape[1], shape[2], 0);
        cublasHandle_t handle;
        CUBLAS_CHECK(cublasCreate(&handle));
        CUBLAS_CHECK(cublasSetMathMode(handle, CUBLAS_DEFAULT_MATH));
        CUBLAS_CHECK(cublasSetStream(handle, x.stream));
        auto launch = [&](int v) {
            if (v == count - 1)
                run_cublas(handle, x.da, x.db, x.dc, x.m, x.n, x.k);
            else
                x.run(versions[v]);
        };
        launch(count - 1);
        CUDA_CHECK(cudaStreamSynchronize(x.stream));
        std::vector<half> reference(x.c.size());
        CUDA_CHECK(cudaMemcpy(reference.data(), x.dc, reference.size() * sizeof(half), cudaMemcpyDeviceToHost));
        bool ok = true;
        for (int v = 0; v < count; ++v)
        {
            CUDA_CHECK(cudaMemsetAsync(x.dc, 0xff, x.c.size() * sizeof(half), x.stream));
            launch(v);
            CUDA_CHECK(cudaStreamSynchronize(x.stream));
            CUDA_CHECK(cudaMemcpy(x.c.data(), x.dc, x.c.size() * sizeof(half), cudaMemcpyDeviceToHost));
            size_t different = 0, cpu_bad = 0;
            auto cpu_value = [&](size_t index) {
                int row = index / x.n, col = index % x.n;
                double ref = 0;
                for (int k = 0; k < x.k; ++k)
                    ref += double(__half2float(x.a[size_t(row) * x.k + k])) *
                           double(__half2float(x.b[size_t(k) * x.n + col]));
                return __half2float(__float2half_rn(float(ref)));
            };
            for (size_t i = 0; i < x.c.size(); ++i)
            {
                float got = __half2float(x.c[i]);
                if (!std::isfinite(got))
                    ++cpu_bad;
                else if (got != __half2float(reference[i]))
                {
                    // 默认 cuBLAS 可能有中间舍入；不以逐位相同作为自写 kernel 的正确性定义。
                    // 所有不同位置均由 CPU double 独立裁决，自写 dyadic 结果必须精确。
                    ++different;
                    if (got != cpu_value(i))
                        ++cpu_bad;
                }
            }
            // dyadic 输入在此 K 范围内 FP32 累加精确。抽样不能代替完整 CPU 测试。
            std::mt19937 rng(63);
            size_t sample_different = 0;
            for (int sample = 0; sample < 256; ++sample)
            {
                int row = sample < 8 ? std::min(x.m - 1, sample == 7 ? x.m - 1 : sample * 16) : rng() % x.m;
                int col = sample < 8 ? std::min(x.n - 1, sample == 7 ? x.n - 1 : sample * 16) : rng() % x.n;
                size_t index = size_t(row) * x.n + col;
                if (__half2float(x.c[index]) != cpu_value(index))
                    ++sample_different;
            }
            std::cerr << "check," << (v == count - 1 ? "cuBLAS" : names[versions[v]])
                      << ',' << x.m << ',' << x.n << ',' << x.k
                      << ",full_cublas_different=" << different << ",cpu_bad=" << cpu_bad
                      << ",cpu256_different=" << sample_different << '\n';
            ok = ok && cpu_bad == 0 && (v == count - 1 || sample_different == 0);
        }
        if (!ok)
        {
            CUBLAS_CHECK(cublasDestroy(handle));
            return 1;
        }
        // 大尺寸减少重复次数；同一尺寸各版本严格相同，CSV 记录实际次数。
        const int repeat = std::max(10, std::min(200, int(200.0 * 1024 * 1024 * 1024 / (double(x.m) * x.n * x.k))));
        for (int i = 0; i < 10 * repeat * count; ++i)
            launch(i % count);
        CUDA_CHECK(cudaStreamSynchronize(x.stream));
        cudaEvent_t start, stop;
        CUDA_CHECK(cudaEventCreate(&start));
        CUDA_CHECK(cudaEventCreate(&stop));
        for (int round = 0; round < 12; ++round)
            for (int position = 0; position < count; ++position)
            {
                int v = (position + round) % count;
                for (int i = 0; i < 10; ++i)
                    launch(v);
                CUDA_CHECK(cudaEventRecord(start, x.stream));
                for (int i = 0; i < repeat; ++i)
                    launch(v);
                CUDA_CHECK(cudaEventRecord(stop, x.stream));
                CUDA_CHECK(cudaEventSynchronize(stop));
                float ms;
                CUDA_CHECK(cudaEventElapsedTime(&ms, start, stop));
                ms /= repeat;
                std::cout << round << ',' << (v == count - 1 ? "cuBLAS" : names[versions[v]])
                          << ',' << x.m << ',' << x.n << ',' << x.k << ",10," << repeat << ',' << ms
                          << ',' << 2.0 * x.m * x.n * x.k / (ms * 1e9) << std::endl;
            }
        CUDA_CHECK(cudaEventDestroy(start));
        CUDA_CHECK(cudaEventDestroy(stop));
        CUBLAS_CHECK(cublasDestroy(handle));
    }
    return 0;
}

int run(int argc, char **argv)
{
    std::string mode = std::string(argv[1]).substr(2);
    if (argc != 2 && !(mode == "profile" && (argc == 3 || argc == 6)))
    {
        std::cerr << "Invalid argument count.\n";
        return 2;
    }
    if (mode == "bench-sizes")
        return benchmark_sizes();
    if (mode == "bench-v6-2")
        return benchmark_v6(2);
    if (mode == "bench-v6-1")
        return benchmark_v6(1);
    if (mode == "bench-v6")
        return benchmark_v6();
    const int selected_test = (mode == "test-v6-3" || mode == "test-large-v6-3") ? 7
                            : (mode == "test-v6-2" || mode == "test-large-v6-2") ? 6
                            : (mode == "test-v6-1" || mode == "test-large-v6-1") ? 5
                            : (mode == "test-v6" || mode == "test-large-v6") ? 4 : -1;
    if (mode == "test" || mode == "test-large" || selected_test >= 0)
    {
        std::vector<std::array<int, 3>> shapes =
            (mode.rfind("test-large", 0) == 0)
                ? std::vector<std::array<int, 3>>{{1024, 1024, 1024}, {1023, 1025, 1007}}
                : std::vector<std::array<int, 3>>{
                      {15, 17, 15}, {16, 16, 16}, {17, 15, 17}, {32, 32, 32}, {33, 31, 33},
                      {1, 1, 1},    {1, 2, 2},      {31, 33, 17},   {63, 62, 14}, {64, 64, 16},
                      {65, 66, 18}, {128, 128, 32}, {128, 128, 34}, {65, 66, 48}, {65, 66, 50},
                      {63, 65, 15}, {65, 63, 33},   {129, 130, 66}};
        if (mode == "test-v6-2" || mode == "test-v6-3")
            shapes.insert(shapes.end(), {{65, 72, 40}, {63, 64, 8}, {65, 72, 24}});
        bool ok = true;
        for (auto s : shapes)
            for (int p = 0; p < 3; ++p)
            {
                const int offsets = (mode == "test-v6-2" || mode == "test-v6-3") ? 2 : 1;
                for (int offset = 0; offset < offsets; ++offset)
                {
                    Matrix x(s[0], s[1], s[2], p, offset);
                    for (int v = selected_test >= 0 ? selected_test : 0;
                         v < (selected_test >= 0 ? selected_test + 1 : int(sizeof(launches) / sizeof(Launch))); ++v)
                        ok = x.check(v, p) && ok;
                }
            }
        return ok ? 0 : 1;
    }
    if (mode == "profile" && (argc == 3 || argc == 6))
    {
        int m = 1024, n = 1024, k = 1024;
        if (argc == 6)
        {
            int *dims[] = {&m, &n, &k};
            for (int i = 0; i < 3; ++i)
            {
                char *end = nullptr;
                long value = std::strtol(argv[i + 3], &end, 10);
                if (*end != '\0' || value <= 0 || value > 16384)
                {
                    std::cerr << "Profile dimensions must be integers in [1, 16384].\n";
                    return 2;
                }
                *dims[i] = int(value);
            }
        }
        std::string version = argv[2];
        int v = version == "v4" ? 0 : version == "v5" ? 1 : version == "v5_1" ? 2 : version == "v5_2" ? 3 : version == "v6" ? 4 : version == "v6_1" ? 5 : version == "v6_2" ? 6 : version == "v6_3" ? 7 : -1;
        if (version == "cublas")
        {
            Matrix x(m, n, k, 0);
            cublasHandle_t handle;
            CUBLAS_CHECK(cublasCreate(&handle));
            CUBLAS_CHECK(cublasSetStream(handle, x.stream));
            run_cublas(handle, x.da, x.db, x.dc, x.m, x.n, x.k);
            CUDA_CHECK(cudaStreamSynchronize(x.stream));
            CUBLAS_CHECK(cublasDestroy(handle));
            return 0;
        }
        if (v < 0)
        {
            std::cerr << "Kernel must be v4, v5, v5_1, v5_2, v6, v6_1, v6_2, v6_3 or cublas.\n";
            return 2;
        }
        Matrix x(m, n, k, 0);
        x.run(v);
        CUDA_CHECK(cudaStreamSynchronize(x.stream));
        return 0;
    }
    if (mode != "bench-compare" && mode != "bench-steady" && mode != "bench-v5-2")
    {
        std::cerr << "Usage: bench_hgemm [M N K] | --test | --test-large | --bench-compare | "
                     "--bench-steady | --bench-v5-2 | --bench-v6 | --bench-v6-1 | --bench-v6-2 | --bench-sizes | --test-v6[-1/-2/-3] | --test-large-v6[-1/-2/-3] | "
                     "--profile v4/v5/v5_1/v5_2/v6/v6_1/v6_2/v6_3/cublas [M N K]\n";
        return 2;
    }
    Matrix x(1024, 1024, 1024, 0);
    const bool compare_v5_2 = (mode == "bench-v5-2");
    const int rounds = compare_v5_2 ? 12 : 9;
    const int repeat = compare_v5_2 ? 200 : 100;
    const std::array<int, 3> versions = compare_v5_2 ? std::array<int, 3>{0, 2, 3}
                                                   : std::array<int, 3>{0, 1, 2};
    // 交替预热三个版本共 3000 次，减轻启动升频对计时的影响。
    if (mode == "bench-steady" || compare_v5_2)
    {
        for (int i = 0; i < 3000; ++i)
            x.run(versions[i % 3]);
        CUDA_CHECK(cudaStreamSynchronize(x.stream));
    }
    cudaEvent_t start, stop;
    CUDA_CHECK(cudaEventCreate(&start));
    CUDA_CHECK(cudaEventCreate(&stop));
    std::mt19937 rng(20261101);
    std::cout << "round,kernel,M,N,K,warmup,repeat,ms,tflops\n";
    for (int round = 0; round < rounds; ++round)
    {
        std::array<int, 3> order = versions;
        if (compare_v5_2)
            // 平衡三个版本在每轮的先后位置，减少热状态/频率漂移偏置。
            std::rotate(order.begin(), order.begin() + round % 3, order.end());
        else
            std::shuffle(order.begin(), order.end(), rng);
        for (int v : order)
        {
            for (int i = 0; i < 20; ++i)
                x.run(v);
            CUDA_CHECK(cudaEventRecord(start, x.stream));
            for (int i = 0; i < repeat; ++i)
                x.run(v);
            CUDA_CHECK(cudaEventRecord(stop, x.stream));
            CUDA_CHECK(cudaEventSynchronize(stop));
            float ms;
            CUDA_CHECK(cudaEventElapsedTime(&ms, start, stop));
            ms /= repeat;
            std::cout << round << "," << names[v] << ",1024,1024,1024,20," << repeat << "," << ms << ","
                      << 2. * 1024 * 1024 * 1024 / (ms * 1e9) << std::endl;
        }
    }
    CUDA_CHECK(cudaEventDestroy(start));
    CUDA_CHECK(cudaEventDestroy(stop));
    return 0;
}

} // namespace hgemm_validation

int main(int argc, char **argv)
{
    if (argc > 1 && std::string(argv[1]).rfind("--", 0) == 0)
        return hgemm_validation::run(argc, argv);

    int M = 1024, N = 1024, K = 1024;

    if (argc == 4)
    {
        M = std::atoi(argv[1]);
        N = std::atoi(argv[2]);
        K = std::atoi(argv[3]);
    }
    else if (argc != 1)
    {
        std::cerr << "Usage: ./bench_hgemm [M N K]\n";
        return EXIT_FAILURE;
    }

    if (M <= 0 || N <= 0 || K <= 0)
    {
        std::cerr << "M, N, K must be positive.\n";
        return EXIT_FAILURE;
    }

    std::cout << "HGEMM Benchmark\n"
              << "M = " << M << ", N = " << N << ", K = " << K << "\n\n";

    const size_t sizeA = static_cast<size_t>(M) * K;
    const size_t sizeB = static_cast<size_t>(K) * N;
    const size_t sizeC = static_cast<size_t>(M) * N;

    // ============================================================
    // 1. Host Memory & Random Data
    // ============================================================

    std::vector<half> hA(sizeA), hB(sizeB);
    std::vector<half> hC_v0(sizeC), hC_v1(sizeC), hC_v2(sizeC), hC_v3(sizeC), hC_ref(sizeC);
    std::vector<half> hC_v4(sizeC);
    std::vector<half> hC_v5(sizeC);
    std::vector<half> hC_v5_1(sizeC);
    std::vector<half> hC_v5_2(sizeC);
    std::vector<half> hC_v6(sizeC);
    std::vector<half> hC_v6_1(sizeC);
    std::vector<half> hC_v6_2(sizeC);
    std::vector<half> hC_v6_3(sizeC);

    std::mt19937 gen(42);
    std::uniform_real_distribution<float> dist(-0.5f, 0.5f);

    for (size_t i = 0; i < sizeA; ++i)
        hA[i] = __float2half_rn(dist(gen));
    for (size_t i = 0; i < sizeB; ++i)
        hB[i] = __float2half_rn(dist(gen));

    // ============================================================
    // 2. Device Memory
    // ============================================================

    half *dA = nullptr, *dB = nullptr;
    half *dC_v0 = nullptr, *dC_v1 = nullptr, *dC_v2 = nullptr, *dC_v3 = nullptr, *dC_ref = nullptr;
    half *dC_v4 = nullptr;
    half *dC_v5 = nullptr;
    half *dC_v5_1 = nullptr;
    half *dC_v5_2 = nullptr;
    half *dC_v6 = nullptr;
    half *dC_v6_1 = nullptr;
    half *dC_v6_2 = nullptr;
    half *dC_v6_3 = nullptr;
    CUDA_CHECK(cudaMalloc(&dC_v5_1, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v5_2, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v6, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v6_1, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v6_2, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v6_3, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v5, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v4, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dA, sizeA * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dB, sizeB * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v0, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v1, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v2, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_v3, sizeC * sizeof(half)));
    CUDA_CHECK(cudaMalloc(&dC_ref, sizeC * sizeof(half)));

    CUDA_CHECK(cudaMemcpy(dA, hA.data(), sizeA * sizeof(half), cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(dB, hB.data(), sizeB * sizeof(half), cudaMemcpyHostToDevice));

    cublasHandle_t handle;
    CUBLAS_CHECK(cublasCreate(&handle));
    CUBLAS_CHECK(cublasSetMathMode(handle, CUBLAS_DEFAULT_MATH));

    // ============================================================
    // 3. Correctness
    // ============================================================

    launch_hgemm_v0(dA, dB, dC_v0, M, N, K);
    launch_hgemm_v1(dA, dB, dC_v1, M, N, K);
    launch_hgemm_v2(dA, dB, dC_v2, M, N, K);
    launch_hgemm_v3(dA, dB, dC_v3, M, N, K);
    launch_hgemm_v4(dA, dB, dC_v4, M, N, K);
    launch_hgemm_v5(dA, dB, dC_v5, M, N, K);
    launch_hgemm_v5_1(dA, dB, dC_v5_1, M, N, K);
    launch_hgemm_v5_2(dA, dB, dC_v5_2, M, N, K);
    launch_hgemm_v6(dA, dB, dC_v6, M, N, K);
    launch_hgemm_v6_1(dA, dB, dC_v6_1, M, N, K);
    launch_hgemm_v6_2(dA, dB, dC_v6_2, M, N, K);
    launch_hgemm_v6_3(dA, dB, dC_v6_3, M, N, K);
    run_cublas(handle, dA, dB, dC_ref, M, N, K);

    CUDA_CHECK(cudaGetLastError());
    CUDA_CHECK(cudaDeviceSynchronize());

    CUDA_CHECK(cudaMemcpy(hC_v0.data(), dC_v0, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v1.data(), dC_v1, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v2.data(), dC_v2, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v3.data(), dC_v3, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v4.data(), dC_v4, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v5.data(), dC_v5, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v5_1.data(), dC_v5_1, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v5_2.data(), dC_v5_2, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v6.data(), dC_v6, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v6_1.data(), dC_v6_1, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v6_2.data(), dC_v6_2, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_v6_3.data(), dC_v6_3, sizeC * sizeof(half), cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(hC_ref.data(), dC_ref, sizeC * sizeof(half), cudaMemcpyDeviceToHost));

    std::cout << "Correctness\n";
    bool pass_v0 = check_correctness("v0 naive", hC_v0, hC_ref);
    bool pass_v1 = check_correctness("v1 shared", hC_v1, hC_ref);
    bool pass_v2 = check_correctness("v2 register", hC_v2, hC_ref);
    bool pass_v3 = check_correctness("v3 register", hC_v3, hC_ref);
    bool pass_v4 = check_correctness("v4 half2", hC_v4, hC_ref);
    bool pass_v5 = check_correctness("v5 cp.async", hC_v5, hC_ref);
    bool pass_v5_1 = check_correctness("v5.1 double", hC_v5_1, hC_ref);
    bool pass_v5_2 = check_correctness("v5.2 bounds", hC_v5_2, hC_ref);
    bool pass_v6 = check_correctness("v6 WMMA", hC_v6, hC_ref);
    bool pass_v6_1 = check_correctness("v6.1 pad", hC_v6_1, hC_ref);
    bool pass_v6_2 = check_correctness("v6.2 vector", hC_v6_2, hC_ref);
    bool pass_v6_3 = check_correctness("v6.3 reuse", hC_v6_3, hC_ref);
    std::cout << '\n';

    if (!pass_v0 || !pass_v1 || !pass_v2 || !pass_v3 || !pass_v4 || !pass_v5 || !pass_v5_1 || !pass_v5_2 || !pass_v6 || !pass_v6_1 || !pass_v6_2 || !pass_v6_3)
    {
        std::cerr << "Correctness check failed. Benchmark aborted.\n";
        CUBLAS_CHECK(cublasDestroy(handle));
        CUDA_CHECK(cudaFree(dA));
        CUDA_CHECK(cudaFree(dB));
        CUDA_CHECK(cudaFree(dC_v0));
        CUDA_CHECK(cudaFree(dC_v1));
        CUDA_CHECK(cudaFree(dC_v2));
        CUDA_CHECK(cudaFree(dC_v3));
        CUDA_CHECK(cudaFree(dC_v4));
        CUDA_CHECK(cudaFree(dC_v5));
        CUDA_CHECK(cudaFree(dC_v5_1));
        CUDA_CHECK(cudaFree(dC_v5_2));
        CUDA_CHECK(cudaFree(dC_v6));
        CUDA_CHECK(cudaFree(dC_v6_1));
        CUDA_CHECK(cudaFree(dC_v6_2));
        CUDA_CHECK(cudaFree(dC_v6_3));
        CUDA_CHECK(cudaFree(dC_ref));
        return EXIT_FAILURE;
    }

    // ============================================================
    // 4. Benchmark
    // ============================================================

    float v0_ms = benchmark([&]()
                            { launch_hgemm_v0(dA, dB, dC_v0, M, N, K); });
    float v1_ms = benchmark([&]()
                            { launch_hgemm_v1(dA, dB, dC_v1, M, N, K); });
    float v2_ms = benchmark([&]()
                            { launch_hgemm_v2(dA, dB, dC_v2, M, N, K); });
    float v3_ms = benchmark([&]()
                            { launch_hgemm_v3(dA, dB, dC_v3, M, N, K); });
    float v4_ms = benchmark([&]()
                            { launch_hgemm_v4(dA, dB, dC_v4, M, N, K); });
    float v5_ms = benchmark([&]()
                            { launch_hgemm_v5(dA, dB, dC_v5, M, N, K); });
    float v5_1_ms = benchmark([&]()
                              { launch_hgemm_v5_1(dA, dB, dC_v5_1, M, N, K); });
    float v5_2_ms = benchmark([&]()
                              { launch_hgemm_v5_2(dA, dB, dC_v5_2, M, N, K); });
    float v6_ms = benchmark([&]()
                              { launch_hgemm_v6(dA, dB, dC_v6, M, N, K); });
    float v6_1_ms = benchmark([&]()
                              { launch_hgemm_v6_1(dA, dB, dC_v6_1, M, N, K); });
    float v6_2_ms = benchmark([&]()
                              { launch_hgemm_v6_2(dA, dB, dC_v6_2, M, N, K); });
    float v6_3_ms = benchmark([&]()
                              { launch_hgemm_v6_3(dA, dB, dC_v6_3, M, N, K); });
    float cublas_ms = benchmark([&]()
                                { run_cublas(handle, dA, dB, dC_ref, M, N, K); });

    const double operations = 2.0 * static_cast<double>(M) * N * K;

    std::cout << std::fixed << std::setprecision(4);
    std::cout << std::left << std::setw(15) << "Kernel"
              << std::right << std::setw(15) << "Latency(ms)"
              << std::setw(15) << "TFLOPS"
              << std::setw(15) << "% cuBLAS" << '\n';

    std::cout << std::string(60, '-') << '\n';

    print_result("v0 naive", v0_ms, operations, cublas_ms);
    print_result("v1 shared", v1_ms, operations, cublas_ms);
    print_result("v2 register", v2_ms, operations, cublas_ms);
    print_result("v3 register", v3_ms, operations, cublas_ms);
    print_result("v4 half2", v4_ms, operations, cublas_ms);
    print_result("v5 cp.async", v5_ms, operations, cublas_ms);
    print_result("v5.1 double", v5_1_ms, operations, cublas_ms);
    print_result("v5.2 bounds", v5_2_ms, operations, cublas_ms);
    print_result("v6 WMMA", v6_ms, operations, cublas_ms);
    print_result("v6.1 pad", v6_1_ms, operations, cublas_ms);
    print_result("v6.2 vector", v6_2_ms, operations, cublas_ms);
    print_result("v6.3 reuse", v6_3_ms, operations, cublas_ms);
    print_result("cuBLAS", cublas_ms, operations, cublas_ms);

    std::cout << "\nv2 / v1 Speedup: " << v1_ms / v2_ms << "x\n";
    std::cout << "v3 / v2 Speedup: " << v2_ms / v3_ms << "x\n";
    std::cout << "v3 / v0 Speedup: " << v0_ms / v3_ms << "x\n";
    std::cout << "v4 / v3 Speedup: " << v3_ms / v4_ms << "x\n";
    std::cout << "v5 / v4 Speedup: " << v4_ms / v5_ms << "x\n";
    std::cout << "v5.1 / v5.0 Speedup: " << v5_ms / v5_1_ms << "x\n";
    std::cout << "v5.2 / v5.1 Speedup: " << v5_1_ms / v5_2_ms << "x\n";
    // ============================================================
    // 5. Cleanup
    // ============================================================

    CUBLAS_CHECK(cublasDestroy(handle));

    CUDA_CHECK(cudaFree(dA));
    CUDA_CHECK(cudaFree(dB));
    CUDA_CHECK(cudaFree(dC_v0));
    CUDA_CHECK(cudaFree(dC_v1));
    CUDA_CHECK(cudaFree(dC_v2));
    CUDA_CHECK(cudaFree(dC_v3));
    CUDA_CHECK(cudaFree(dC_v4));
    CUDA_CHECK(cudaFree(dC_v5));
    CUDA_CHECK(cudaFree(dC_v5_1));
    CUDA_CHECK(cudaFree(dC_v5_2));
    CUDA_CHECK(cudaFree(dC_v6));
    CUDA_CHECK(cudaFree(dC_v6_1));
    CUDA_CHECK(cudaFree(dC_v6_2));
    CUDA_CHECK(cudaFree(dC_v6_3));
    CUDA_CHECK(cudaFree(dC_ref));

    return 0;
}
