@def title = "Parallel Computing - Multithreading"
@def hascode = true

@def tags = ["Parallel Computing", "Multithreading"]

# Multithreading in Julia
\toc

Before we have a look how [Julia deals with the concept of multithreading](https://docs.julialang.org/en/v1/manual/multi-threading/), let us make clear what we are talking about.

## What is multithreading?

In the terminology of computer science a thread is the smallest sequence of instructions that can be managed by the scheduler of the operating system. It is often also called a light weight process and is most of the time considered to exist inside the context of a process. Consequently, multithreading is the ability to mange multiple concurrently executed threads. Multiple threads share their resources, this makes this quite a powerful tool. The threads run on a single CPU or on multiple CPUs and give us the opportunity to leverage the full force of our computer (or cell phone for that matter).

## Back to Julia

By default, Julia will start with a single computational thread of execution:
```julia-repl
julia> Threads.nthreads()
1
```
This does not mean that Julia is only using one thread. We mentioned the [Basic Linear Algebra Subroutines - BLAS](http://www.netlib.org/blas/) before. Calls to this library (e.g. matrix-matrix multiplication) will be multithreaded by default and therefore, technically you have been doing multithreading all along ;). Let us illustrate this with a small example.

\example{
Influencing the number of threads in BLAS. When we include the [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) package we get the possibility to manipulate the number of threads. Here `BLAS` is a wrapper to the BLAS libraries used by Julia. 
```julia-repl
julia> using BenchmarkTools, LinearAlgebra

julia> A = rand(2000, 2000);
julia> B = rand(2000, 2000);

julia> BLAS.get_num_threads()
8
julia> @btime $A * $B;
  141.984 ms (2 allocations: 30.52 MiB)

julia> BLAS.set_num_threads(1)
julia> @btime $A * $B;
  1.009 s (2 allocations: 30.52 MiB)
```
}

In order to have multiple threads available you need to start Julia with the `--threads <Int|auto>` option or define the environment variable `JULIA_NUM_THREADS=<Int>`. With the command `threadid()` from the [`Threads`](https://docs.julialang.org/en/v1/base/base/#Base.Threads) module you can find out on which thread you currently are.
```julia-repl
> julia --threads auto
julia> Threads.nthreads()
16
julia> Threads.threadid()
1
```
By default, the Julia REPL, or the main Julia process for that matter, will always run on the thread with id `1`race.
We do not have the time for a deep dive into all the dirty details on how do do proper multithreaded programming (raise conditions, locks, atomic operations, thread safe programming, ...), therefore we keep it light and simple with the `@threads` macro and introduce the needed concepts when we need them along the way.

@@important
For comparison, all the benchmarks and computations are performed with `4` threads. 
@@

Like all the other macros it gives us the possibility to bring something rather complex in our code by still staying very readable as the following example shows.

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
@@important
In Julia we have to be aware of the concept of [Task migration](https://docs.julialang.org/en/v1/manual/multi-threading/#man-task-migration).
This means a task started with `@threads` might not always run on the **same** thread but can move threads if the the task yields.
In particular this means we should no treat `threadid()` as a constant and should not use it as an index in e.g. arrays.
By using the `:static` schedule option we can freeze the `threadid()`.
@@
Let us try to apply this concept to our $\pi$ example.

## Multithreaded $\pi$

The obvious first impulse is to just write a `@threads` in front of the loop in our `in_unit_circle` routine, well lets follow this impulse.

@@important
We assume the functions and variables from the [Not the most efficient way of computing $\pi$](../pi/) section are defined and we write some new in addition.
@@

For reference, the results in this section are computed with 4 threads and the original code has the following performance
```julia-repl
julia> @btime estimate_pi(in_unit_circle, N)
  235.643 ms (0 allocations: 0 bytes)
3.14141152
```
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
julia> get_accuracy(in_unit_circle_threaded1, N)
  2.2828585264557084

julia> @btime estimate_pi(in_unit_circle_threaded1, N);
  21.899 s (843326330 allocations: 12.57 GiB)
```
Well that is underwhelming. The result is wrong and it is slower. So what happened?
}
}

### Atomic Operations

As we could see, in the above example from the docs, the loop is automatically split up per index for the threads available. This means each of the threads is performing the same loop and as the context and memory is shared also access the same storage. This is problematic for our variable `M`. This means each thread reads and writes in the same variable but this also means the result is not correct. It might override the results of other threads or they all read at the same time but only one result will be written in the end. In short the counter is totally wrong. We call this [race condition](https://en.wikipedia.org/wiki/Race_condition).

To solve this issue Julia supports [atomic](https://docs.julialang.org/en/v1/manual/multi-threading/#Atomic-Operations) values. This allows us to access a variable in a thread-safe way and avoid race conditions. All primitive types can be wrapped with `M = Atomic{Int64}(0)` and can only be accessed in a thread safe way. In order to do the atomic add we use the function `atomic_add!(M, 1)` and we can access the value with `M[]`.

\exercise{
Define a new function `in_unit_circle_threaded2` with the `@threads` macro, an atomic `M` and test the result as well as the timing.
\solution{
```julia
function in_unit_circle_threaded2(N::Int64)
    M = Atomic{Int64}(0);
    
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
julia> get_accuracy(in_unit_circle_threaded2, N)
  2.729346091356888e-5

julia> @btime estimate_pi(in_unit_circle_threaded2, N);
  10.487 s (24 allocations: 2.03 KiB)
```
Now our result is correct, but the time is still not better but worse.
}
}

### Actually distribute the work
We are still not fast, because each `attomic_add!` is checking which thread has the current result and needs to add the new value. To avoid this we need to eliminate atomic again. We can actually split up the work quite neatly if we remember the example from the docs. It is possible to access the `threadid()` and the number of threads `nthreads()`. So why not define `M` as an array of length `nthreads()` and in each thread write to separate values in the array by using `threadid()` as index.

\exercise{
Define a new function `in_unit_circle_threaded3` with the `@threads`, `M` as array and test the result as well as the timing.
\solution{
```julia
function in_unit_circle_threaded3(N::Int64)
    M = zeros(Int64, nthreads());
    
    @threads :static for i in 1:N
        if (rand()^2 + rand()^2) < 1
            @inbounds M[threadid()] += 1
        end
    end

    return sum(M)
end
```
and we test it
```julia-repl
julia> get_accuracy(in_unit_circle_threaded3, N)
  1.7652409621149445e-5

julia> @btime estimate_pi(in_unit_circle_threaded3, N);
  2.857 s (23 allocations: 2.08 KiB)
```
Now our result is correct, and the time is okay.
}
}

Now we are faster, but still not faster than the serial version. Why is it still not working?

### Global states

Without going into too much detail, `rand()` is not thread safe. It does manipulate and read from some global state and that causes our slowdown. In fact, as the random numbers are not correctly distributed any more, the accuracy is also decaying. 

To avoid this we need to exchange the random number generator and make the call to `rand` thread safe. This solution is inspired by the section *Multithreading* of the [Parallel Computing Class on JuliaAcademy.com](https://juliaacademy.com/p/parallel-computing) and slightly adapted for the setup we have. 

First step is to define a separate random number generator per thread:
```julia
using Random

const ThreadRNG = Vector{Random.MersenneTwister}(undef, nthreads())
@threads for i in 1:nthreads()
       ThreadRNG[i] = Random.MersenneTwister(i)
end
```
What we do in the third line is define a [`const`](https://docs.julialang.org/en/v1/base/base/#const) variable. That is a global variable whose type will not change. In fact we define a Vector of size `nthreads()` and fill it with distinct [`Random.MersenneTwister`](https://docs.julialang.org/en/v1/stdlib/Random/#Random.MersenneTwister). This allows us to have a different random number generator for each thread by using
```julia
rng = ThreadRNG[threadid()]
rand(rng)
```
in each thread. 

Now for our final version of the code, the basic idea is to not have a threaded loop over the integer `N` but over the number of threads. In order for this to work we need to figure out how many iterations each thread needs to perform. 
For that, we use `len, rem = divrem(N, nthreads())` to divide up `N` into the quotient and remainder from the Euclidean division.  

\exercise{
Define a new function `in_unit_circle_threaded4` with the `@threads` macro, `M` as array, the above code snippets and test the result as well as the timing.
Extra points if you check if we do not loose any iterations due to the split.
\solution{
```julia
using Random

const ThreadRNG = Vector{Random.MersenneTwister}(undef, nthreads())
@threads for i in 1:nthreads()
       ThreadRNG[i] = Random.MersenneTwister(i)
end

function in_unit_circle(N::Int64, rng)
    M = zero(Int64)

    for j in 1:N
        if (rand(rng)^2 + rand(rng)^2) < 1
            M += 1
        end
    end

    return M
end

function in_unit_circle_threaded4(N::Int64)
    M = zeros(Int64, nthreads())
    len, rem = divrem(N, nthreads())

    @threads for i in 1:nthreads()
      M[i] = in_unit_circle(len, ThreadRNG[i])
    end

    return sum(M)
end 

```
and we test it
```julia-repl
julia> get_accuracy(in_unit_circle_threaded4, N)
  3.955314820203171e-5

julia> @btime estimate_pi(in_unit_circle_threaded4, N);
  504.697 ms (22 allocations: 2.06 KiB)
```
}
}

### Final results

For comparison, here are our final results for 4 computational threads:
```julia
Accuracy of in_unit_circle: 9.43186408797203e-5
Performance:
  2.531 s (0 allocations: 0 bytes)

Accuracy of in_unit_circle_threaded1: 2.2828585264557084
Performance:
  21.899 s (843326330 allocations: 12.57 GiB)

Accuracy of in_unit_circle_threaded2: 2.729346091356888e-5
Performance:
  10.487 s (24 allocations: 2.03 KiB)

Accuracy of in_unit_circle_threaded3: 1.7652409621149445e-5
Performance:
  2.857 s (23 allocations: 2.08 KiB)

Accuracy of in_unit_circle_threaded4: 3.955314820203171e-5
Performance:
  504.697 ms (22 allocations: 2.06 KiB)
```

### Other pitfalls

There are several other pitfalls that might occur with multithreading, here is an incomplete list:
- **Oversubscription**: We can overdo it with threading. For example if we multithread an algorithm that uses a BLAS routine, it can result in the scenario, that inside each thread a subroutine is trying to run on multiple threads. Thus, they might partially block each other and the overall performance is reduced, depending on the capacities we are working on.
- [**False sharing**](https://en.wikipedia.org/wiki/False_sharing): The latency of the different layers of memory inside a CPU vary and also the way a core on a CPU can access it. Usually, L3 is shared by all cores but not L2 and L1. This can result in *false* sharing and reduce the performance if one CPU accesses the data from a cache of another CPU. 

