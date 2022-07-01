@def title = "Parallel Computing - Multithreading"
@def hascode = true

@def tags = ["ParallelComputingMultithreading"]

# Multithreading in Julia

Before we have a look how [Julia deals with this multithreading](https://docs.julialang.org/en/v1/manual/multi-threading/), let us make clear what we are talking about.

## What is multithreading

In the terminology of computer science a thread is the smallest sequence of instructions that can be managed by the scheduler of the operating system. It is often also called a light weight process and is most of the time considered to exist inside a process. Consequently, multithreading is the ability to mange multiple concurrently executed threads. Multiple threads share the resources, this makes this quite a powerful tool. The con run on a single CPU or on multiple CPUs and give you the opportunity to leverage the full force of your computer (or cell phone for that matter).

## Julia

Julia will start with a single computational thread of execution:
```julia-repl
julia> Threads.nthreads()
1
```
This does not say that Julia is only using one thread. We mentioned the [Basic Linear Algebra Subroutines - BLAS](http://www.netlib.org/blas/) before. Calls to this library (e.g. matrix-matrix multiplication) will be multithreaded by default and therefore technically you have been doing multithreading all along ;). Let us illustrate this this with a small example.

\example{
Influencing the number of threads in BLAS. When we include the [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) package we get the possibility to manipulate the number of threads. Here `BLAS` is a wrapper to the BLAS libraries used by Julia. 
```julia-repl
julia> using BenchmarkTools
julia> using LinearAlgebra
julia> A = rand(2000, 2000);
julia> B = rand(2000, 2000);
julia> @btime $A*$B;
  141.984 ms (2 allocations: 30.52 MiB)
julia> BLAS.get_num_threads()
8
julia> BLAS.set_num_threads(1)
julia> @btime $A*$B;
  1.009 s (2 allocations: 30.52 MiB)
```
}

In order to have multiple threads available you need to start Julia with the `--threads <Int|auto>` option or define the environment variable `JULIA_NUM_THREADS=<Int>`. With the command `Threads.threadid()` you can find out on which thread you currently are.
```julia-repl
> julia --threads auto
julia> Threads.nthreads()
16
juliy> Threads.threadid()
```
We do not have the time for a deep dive into all the dirty details on how do do proper multithreaded programming (raise conditions, locks, atomic operations, thread safe programming, ...), therefore we keep it light and simple with the `@threads` macro and introduce of these concepts what we need along the way.

Like all the other macro it gives us the possibility to bring something rather complex in our code by still staying readable.

\example{
Simple example for the [docs](https://docs.julialang.org/en/v1/manual/multi-threading/#The-@threads-Macro):

```julia-repl
julia> using Base.Threads
julia> nthreads()
4
julia> a = zeros(10);
julia> @threads for i in 1:10
       a[i] = threadid()
       end
julia> a
10-element Vector{Float64}:
 1.0
 1.0
 1.0
 2.0
 2.0
 2.0
 3.0
 3.0
 4.0
 4.0
 ```
}

Let us try to apply this example to our $\pi$ example.

## Multithreaded $\pi$

The obvious first impulse is to just write a `@threads` in front of our `in_unit_circle` routine, well lets follow this impulse.
@@important
We assume the functions and variables from the [Not the most efficient way of computing $\pi$](./pi) section exist and we write some in addition.
@@

\exercise{
Define a new function `in_unit_circle_threaded1` with the `@threads` macro and test the result as well as the timing.
\solution{
```julia
using BenchmarkTools
function in_unit_circle_threaded1(N::Int64)
    M = 0
    
    @threads for i in 1:N
        if (rand()^2 + rand()^2) < 1
            M += 1
        end
    end

    return M
end
```
and we test it
```julia-repl
julia> println(
           abs(
           estimate_pi(in_unit_circle_threaded1, N) - pi
           )
       )
2.238629413589793

julia> @btime estimate_pi(in_unit_circle_threaded1, N)
  1.764 s (78540628 allocations: 1.17 GiB)
0.8047274

julia> @btime estimate_pi(in_unit_circle, N)
  235.643 ms (0 allocations: 0 bytes)
3.14141152
```
Well that is underwhelming. The result is wrong and it is slower. So what happened?
}
}

### Atomic Operations

As we could see in the above example of the docs the loop is automatically split up per index for the threads available. This means each of the threads do the same loop and as the context and memory is shared also access the same storage. This is problematic for our variable `M`. Each thread will only write the result it has into it and it will override other threads and reading is strange. In short the counter is totally wrong. We call this [rase condition](https://en.wikipedia.org/wiki/Race_condition).

To solve this issue Julia supports [atomic](https://docs.julialang.org/en/v1/manual/multi-threading/#Atomic-Operations) values. This allows us to access a variable in a thread-safe way and avoid race conditions. All primitive types can be wrapped with `M = Atomic{Int}(0)` and can only be accessed in a thread safe way. In order to do the atomic add we use the function `atomic_add!(M, 1)` and we can we access it with `M[]`.

\exercise{
Define a new function `in_unit_circle_threaded2` with the `@threads`, an atomic `M` and test the result as well as the timing.
\solution{
```julia
function in_unit_circle_threaded2(N::Int64)
    M = Atomic{Int}(0);
    
    @threads for i in 1:N
        if (rand()^2 + rand()^2) < 1
            atomic_add!(M, 1)
        end
    end

    return M[]
end
```
and we test it
```julia-repl
julia> println(
           abs(
           estimate_pi(in_unit_circle_threaded2, N) - pi
           )
       )
1.1466410207106037e-5

julia> @btime estimate_pi(in_unit_circle_threaded2, N)
  1.026 s (78540628 allocations: 1.17 GiB)
3.14157478
```
Now our result is correct, but the time is still not better but worse.
}
}

### Actually distribute the work
We are still not fast because each `attomic_add!` is checking which thread has the current result. To avoid this we need to eliminate atomic again. We can actually split up the work quite neatly if we remember the example from the docs. It is possible to access the `threadid()` and the number of threads `nthreads()` so why not define `M` as an array of length `nthreads()` and in each thread add with index `threadid()`.

\example{
Define a new function `in_unit_circle_threaded3` with the `@threads`, `M` as array and test the result as well as the timing.
\solution{
```julia
function in_unit_circle_threaded3(N::Int64)
    M = zeros(Int64, nthreads());
    
    @threads for i in 1:N
        if (rand()^2 + rand()^2) < 1
            @inbounds M[threadid()] += 1
        end
    end

    return sum(M)
end
```
and we test it
```julia-repl
julia> println(
           abs(
           estimate_pi(in_unit_circle_threaded2, N) - pi
           )
       )
0.00017913358979315674in

julia> @btime estimate_pi(in_unit_circle_threaded2, N)
  246.722 ms (22 allocations: 2.05 KiB)
3.1415168
```
Now our result is correct, and the time is okay.
}
}

Given for our example the memory overhead produced by the threads is gutting into our time and we can not speed up a essentially but why?

### Global states

Without going into to much detail, `rand()` is not thread safe. It does manipulate and read from some global state and that causes our slowdown and actually also our accuracy.

To avoid this we need to exchange the random number generator and make it thread safe. This code is from the julia Academy hpc class 

```julia
import Random

const ThreadRNG = Vector{Random.MersenneTwister}(undef, nthreads())
@threads for i in 1:nthreads()
       ThreadRNG[threadid()] = Random.MersenneTwister()
end

function in_unit_circle_threaded4(N::Int64)
    M = zeros(Int64, nthreads())
    len, rem = divrem(N, nthreads())
    
    @threads for i in 1:nthreads()
        rng = ThreadRNG[threadid()]
        m = 0
        for j in 1:len
            if (rand(rng)^2 + rand(rng)^2) < 1
                m += 1
            end
        end
        M[threadid()] = m
    end

    return sum(M)
end 
```