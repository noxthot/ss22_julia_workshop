@def title = "Parallel Computing - Performance"
@def hascode = true

@def tags = ["Parallel Computing", "Performance"]

# How to measure performance in Julia

For that, we recall the loops example from the introduction to [loops](../../introduction/loops.html) and include the simple `@time` macro.
```julia:./code/performance.jl
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
\show{./code/performance.jl}

The downside with the `@time` macro is, that it really just measures the execution time of what is given to it. This means if the function is not already compiled this might include compiling or if the CPU is busy with something else it is often not accurate. 

Therefore, if you are serious about measuring  performance you should stick to the [`BenchmarkTools`](https://juliaci.github.io/BenchmarkTools.jl/stable/). It comes with a couple of macros that you should test out:

\exercise{
In order to use the BenchmarkTools you need to include it with `using BenchmarkTools`, as any other package. 
Benchmark your `mysum` function with the following macros:
1. `@benchmark`
1. `@btime` 
1. Look at the detailed output of your benchmark with `dump(t)`, where `t` is the output result of a `@benchmark` run.
and compare the output and results.
\solution{
To measure the performance of the above code we do the following:
```julia:./code/performance.jl
using BenchmarkTools

@benchmark mysum($a)
```
\show{./code/performance.jl}
the full details with 
```julia:./code/performance.jl
t = @benchmark mysum($a)
dump(t)
```
\show{./code/performance.jl}
and the often used sanity check, that actually also shows you the output of your code.
```julia:./code/performance.jl
@btime mysum($a)
```
\show{./code/performance.jl}
}
}

We can also use the [`Profiler`](https://docs.julialang.org/en/v1/manual/profile/#Profiling) package to really dig into profiling the code but this is a bit too much of a deep dive for this class, it would look like this:
```julia:./code/performance.jl
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