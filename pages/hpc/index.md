# Parallel computing with Julia

Since modern laptops and computers come with multiple cores it parallel computing is not just something for High Performance Computing systems. The general idea is, do not only use a single computational thread (linear programming) but run concurring tasks at the same time that solve the task you set them. Julia by default supports different ways for active [parallel or concurring computing](https://docs.julialang.org/en/v1/manual/parallel-computing/). In this section we follow some of the examples given on [Julia Academy - JuliaTutorials](https://github.com/JuliaAcademy/JuliaTutorials).

Before we going to specifically parallelise code we talk about an inbuilt mechanism called Singele-instruction, multiple data or [SIMD](https://docs.julialang.org/en/v1/base/simd-types/) for short. The main idea is that CPUs (or basically any ALU core) can perform the same operation on different input in a single clock cycle. This was already used for BLAS and LAPACK packages, with the so call unlooping. What are we talking about:

# Single-Instruction multiple data
Let us consider the following example
\begin{align*}
x_1 + y_1 \to z_1\\
x_2 + y_2 \to z_2\\
x_3 + y_3 \to z_3\\
x_4 + y_4 \to z_4
\end{align*}
which should look pretty familiar from the basic vector multiplication $z = x + y$. As mentioned, modern processors have *vector units* that can deal with this kind of operation at once, basically:
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
If we define the sum over a vector we can see how Julia is including this concept and why it is most of the time better to call library functions than programming them on your own.
```julia:./code/simd.jl

function mysum(a)
    result = zero(eltype(a))
    for i in eachindex(a)
        @inbounds result += a[i]
    end
    return result
end
a = rand(100_000)
mysum(a)
```
\show{./code/simd.jl}

## How to measure performance in Julia

You should always measure performance with the [`BenchmarkTools`](https://juliaci.github.io/BenchmarkTools.jl/stable/). So to measure the performance of the above code we do the following:
```julia:./code/simd.jl
using BenchmarkTools

@benchmark mysum(a)
```
\show{./code/simd.jl}
the full details with 
```julia:./code/simd.jl
t = @benchmark mysum(a)
dump(t)
```
\show{./code/simd.jl}
and the often used sanity check, that actually also shows you the output of your code.
```julia:./code/simd.jl
@btime mysum(a)
```
\show{./code/simd.jl}
```julia:./code/simd.jl
using Profile

Profile.clear()
@profile for _ in 1:100_000; mysum(a); end
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
