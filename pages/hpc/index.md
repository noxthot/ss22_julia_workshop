# Parallel computing with Julia

Since modern laptops and computers come with multiple cores parallel computing is not just something for High Performance Computing systems. The general idea is to not only use a single computational thread (linear programming) but run concurring tasks at the same time that solve the task you set them. Julia by default supports different ways for active [parallel or concurring computing](https://docs.julialang.org/en/v1/manual/parallel-computing/). In this section we follow some of the examples given on [Julia Academy - JuliaTutorials](https://github.com/JuliaAcademy/JuliaTutorials).

Before we are are going into the details of parallel coding we need to talk about how to measure performance in Julia.

## How to measure performance in Julia

For that, we recall the loops example from the introduction to [loops](../../introduction/loops.html) and include the simple `@time` macro.
```julia:./code/simd.jl
function mysum(a)
    result = zero(eltype(a))

    for i in eachindex(a)
        @inbounds result += a[i]
    end

    return result
end

a = rand(100_000)
@time mysum(a)
@time mysum(a)
```
\show{./code/simd.jl}

The downside with the `@time` macro is, that it really just measures the execution time of what is given to it. This means if the function is not already compiled this might include compiling or if the CPU is busy with something else it is often not accurate. 

Therefore, if you are serious about measuring  performance you should stick to the [`BenchmarkTools`](https://juliaci.github.io/BenchmarkTools.jl/stable/). It comes with a couple of macros that you should test out:

\exercise{
In order to use the BenchmarkTools you need to include it with `using BenchmarkTools`, as any other package. 
Benchmark your `mysum` function with the following macros:
1. `@benchmark`
2. `@btime` 
3. Look at the detailed output of your benchmark with `dump(t)`, where `t` is the output result of a `@benchmark` run.
and compare the output and results.
\solution{
To measure the performance of the above code we do the following:
```julia:./code/simd.jl
using BenchmarkTools

@benchmark mysum($a)
```
\show{./code/simd.jl}
the full details with 
```julia:./code/simd.jl
t = @benchmark mysum($a)
dump(t)
```
\show{./code/simd.jl}
and the often used sanity check, that actually also shows you the output of your code.
```julia:./code/simd.jl
@btime mysum($a)
```
\show{./code/simd.jl}
}
}

We can also use the [`Profiler`](https://docs.julialang.org/en/v1/manual/profile/#Profiling) package to really dig into profiling the code but this is a bit too much of a deep dive for this class, it would look like this:
```julia:./code/simd.jl
using Profile

Profile.clear()
@profile for _ in 1:100_000; mysum($a); end
Profile.print(maxdepth=15)
```
```bash
Overhead ╎ [+additional indent] Count File:Line; Function
=========================================================
    ╎8281  @Base/client.jl:495; _start()
    ╎ 8281  @Base/client.jl:309; exec_options(opts::Base.JLOptions)
    ╎  8281  @Base/client.jl:379; run_main_repl(interactive::Bool, quiet::Bool, banner::Bool, history_file::Bool, color_set::Bool)
    ╎   8281  @Base/essentials.jl:714; invokelatest
    ╎    8281  @Base/essentials.jl:716; #invokelatest#2
    ╎     8281  @Base/client.jl:394; (::Base.var"#936#938"{Bool, Bool, Bool})(REPL::Module)
    ╎    ╎ 8281  ...r/worker/package_linux64/build/usr/share/julia/stdlib/v1.7/REPL/src/REPL.jl:351; run_repl(repl::REPL.AbstractREPL, consumer::Any)
    ╎    ╎  8281  ...r/worker/package_linux64/build/usr/share/julia/stdlib/v1.7/REPL/src/REPL.jl:364; run_repl(repl::REPL.AbstractREPL, consumer::Any; backend_on_current_task::Bool)
    ╎    ╎   8281  .../worker/package_linux64/build/usr/share/julia/stdlib/v1.7/REPL/src/REPL.jl:231; start_repl_backend(backend::REPL.REPLBackend, consumer::Any)
    ╎    ╎    8281  .../worker/package_linux64/build/usr/share/julia/stdlib/v1.7/REPL/src/REPL.jl:246; repl_backend_loop(backend::REPL.REPLBackend)
    ╎    ╎     8281  ...worker/package_linux64/build/usr/share/julia/stdlib/v1.7/REPL/src/REPL.jl:150; eval_user_input(ast::Any, backend::REPL.REPLBackend)
    ╎    ╎    ╎ 8281  @Base/boot.jl:373; eval
    ╎    ╎    ╎  8281  .../package_linux64/build/usr/share/julia/stdlib/v1.7/Profile/src/Profile.jl:28; top-level scope
   1╎    ╎    ╎   8281  REPL[18]:1; macro expansion
    ╎    ╎    ╎    1     REPL[7]:3; mysum(a::Vector{Float64})
    ╎    ╎    ╎     1     @Base/abstractarray.jl:279; eachindex
    ╎    ╎    ╎    8279  REPL[7]:4; mysum(a::Vector{Float64})
    ╎    ╎    ╎     8279  @Base/range.jl:837; iterate
Total snapshots: 16562
```
# Single-Instruction multiple data

Before we are going to specifically parallelise code we talk about an inbuilt mechanism called Single-instruction, multiple data or [SIMD](https://docs.julialang.org/en/v1/base/simd-types/) for short. The main idea is that CPUs (or basically any ALU core) can perform the same operation on multiple inputs in a single clock cycle. This was already used for BLAS and LAPACK packages, with the so call unlooping.

Let us consider the following example
\begin{align*}
x_1 + y_1 \to z_1\\
x_2 + y_2 \to z_2\\
x_3 + y_3 \to z_3\\
x_4 + y_4 \to z_4
\end{align*}
which should look pretty familiar from the basic vector addition $z = x + y$. As mentioned, modern processors have *vector units* that can deal with this kind of operation at once, basically:
\begin{align*}
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
x_4
\end{pmatrix}
+
\begin{pmatrix}
y_1\\
y_2\\
y_3\\
y_4
\end{pmatrix}
\to
\begin{pmatrix}
z_1\\
z_2\\
z_3\\
z_4
\end{pmatrix}
\end{align*}
This looks otley familiar, as this is our sum example. We can modify our sum over a vector, and learn how Julia is including the SIMD concept and why it is most of the time better to call library functions than programming them on your own. As we know how to do benchmarking lets try to figure out if our sum function is doing a good job.
```julia:./code/simd.jl
println("\nSimple sum:")
@btime mysum($a)
println("\nBuilt-in sum:")
@btime sum($a)
```
\show{./code/simd.jl}
As we can see, we are slower, exactly how much slower depends on the architecture of your CPU but it is usually between 2 to 16 times. 

In order to enable simd in a program (if it is not done by library calls anyway) you can use the `@simd` macro, this works if you loop over the indices or the elements, Julia is quite flexible there. 
```julia:./code/simd_2.jl
function mysimdsum(a)
    result = zero(eltype(a))

    @simd for i in eachindex(a)
        @inbounds result += a[i]
    end

    return result
end

function mysum2(V)
    s = zero(eltype(V))

    for v in V
        s += v
    end

    return s
end

function mysimdsum2(V)
    s = zero(eltype(V))

    @simd for v in V
        s += v
    end

    return s
end

println("\nSimple mysum(a) = ", mysum(a))
@btime mysum($a)
println("\nBuilt-in sum(a) = ", sum(a))
@btime sum($a)
println("\nSimple mysimdsum = ", mysimdsum(a))
@btime mysimdsum($a)
println("\nSimple mysum2 = ", mysum2(a))
@btime mysum2($a)
println("\nSimple mysimdsum2 = ", mysimdsum2(a))
@btime mysimdsum2($a)
```
\show{./code/simd_2.jl}
We can see a massive speed up (that will depend on the CPU architecture you are running your code on). What is interesting is, that the results of the three function calls are not the same. 

This is do to the fact that the numerics involved are are a bit tricky. In short, when adding floating point numbers you loose accuracy when adding a large number to a small number. This is exactly what is happening for our first example as we add all the numbers in one long sequence. 

The built-in `sum` function as well as the `@simd` macro allow Julia to change the order of the operations. What it does is computing the result for the even and odd entries separately and therefore gaining a bit of accuracy.

If you are not sure if something is vectorized you can check out the LLVM code:
```julia:./code/simd_2.jl
using InteractiveUtils

@code_llvm mysimdsum(a)
```
\show{./code/simd_2.jl}

```julia:./code/simd_2.jl
a32 = rand(Float32, length(a)*2)
println("\nBuilt-in sum(FLOAT64) = ", sum(a))
@btime sum($a32)
println("\nBuild-in sum(FLOAT32) = ", sum(a32))
@btime sum($a32)
```
\show{./code/simd_2.jl}
# Multiple dispatch? 
```julia:./code/simd_3.jl
using InteractiveUtils

@code_typed optimize=false mysum([1, 2, 3])
```
\show{./code/simd_3.jl}


# Concept for how to go further

- introduce $\pi$ example and let them program it
- introduce multithreading and adapt the $\pi$ example
- introduce multiple processes and adapt the $\pi$ example
- introduce "cluster" and adapt $\pi$ example
- bring it to the GPU - show and tell, if the have gpus let them test
- Repeat what we learned today
- If on last day Q/A section