@def title = "Parallel Computing - Distributed Computing"
@def hascode = true

@def tags = ["Parallel Computing", "Distributed Computing"]

# Distributed computing in Julia
\toc

In Julia we talk about distributed computing when we run Julia processes with separate memory spaces, Julia does not distinguish between processes on the same or on multiple computers. The main idea is to have remote execution. 

Before we start with distributed computing we introduce tasks.

## Tasks

Tasks are part of the [asynchronous programming](https://docs.julialang.org/en/v1/manual/asynchronous-programming/) concepts implemented in Julia. 
We can think of a task as a work package with a create-start-run-finish lifecycle. This means, a task can be created and scheduled independently. 
Tasks are the basic building block for performing distributed computing in Julia. 
This concept of tasks is actually rather similar to how High Performance Computing (HPC) systems work with their job scheduler.

To create a task we can use the `@task` macro, that will return a *runnable* but will not execute it. We use the `schedule` command to actually execute it. 

```julia-repl
julia> t = @task begin; sleep(5); println("done"); end
Task (runnable) @0x00007fb859f336b0

julia> schedule(t)
Task (runnable) @0x00007fb859f336b0

julia> done
julia> 
```

The main idea is, that a task can be interrupted and the order of tasks is not set. This means if you have multiple tasks the order of execution is not guaranteed. This also means, that the main Julia process is not blocked by a task but works independently. If you want to wait for the task to finish before the calling task continues, you can do this with `wait(t)`.

Most of the time you create a task and schedule it right away. This can be done by the `@async` macro. It is basically equivalent to `schedule(@task x)`. You can also catch the task (and therefore the state) with `t = @async x`. If you want to wait for several tasks you can use the `@sync` macro. It will wait until all enclosed tasks spanned by `@async`, `@spawn`, `@spawnat`, and `@distributed` are completed. 

A task can also return a value, you can get the value with `fetch(t)` or with `take!(t)`,  which will remove the value as well. 

\example{
The following examples are taken from [Parallel Computing Class on JuliaAcademy.com](https://juliaacademy.com/p/parallel-computing), section *Tasks*:
1. How long will this take?
```julia
@time for i in 1:10
          sleep(1)
      end
```

2. How long will this take?
```julia
@time for i in 1:10
          @async sleep(1)
      end
```

3. How long will this take?
```julia
@time @sync for i in 1:10
                @async sleep(1)
            end
```
\solution{
```julia-repl
julia> @time for i in 1:10
                 sleep(1)
             end
 10.020172 seconds (51 allocations: 1.703 KiB)

julia> @time for i in 1:10
                 @async sleep(1)
             end
  0.017384 seconds (6.40 k allocations: 399.856 KiB, 96.91% compilation time)

julia> @time @sync for i in 1:10
                       @async sleep(1)
                   end
  1.047838 seconds (847 allocations: 53.656 KiB, 4.34% compilation time)

```
}
}

### The $\pi$ example with tasks

Now we apply the task knowledge to our example for computing $\pi$.

\exercise{
Define a new function `in_unit_circle_task` with the `@async` and `@sync` macros. Split up `N` into 4 parts, same as for threads, and schedule the tasks in a loop. Define a vector of tasks to catch the results inside the loop.
\solution{
```julia
function in_unit_circle_task(N::Int64)
    n = 4
    len, rem = divrem(N, n)
    t = Vector{Task}(undef, n)
    
    @sync for i in 1:4
        t[i] = @async in_unit_circle(len)
    end
    
    M = sum(map((x) -> fetch(t[x]), 1:4))
    
    return M
end
```
and we test it
```julia-repl
julia> get_accuracy(in_unit_circle_task, N)
  3.002385561856613e-5

julia> @btime estimate_pi(in_unit_circle_task, N);
  2.549 s (46 allocations: 2.72 KiB)
```
}
}

## Back to distributed computing

Now that we know what a task is and how to create one we have no difficulty to define what distributed computing is. 
It is simply the way to distribute tasks on multiple CPUs or computers. 
This multiprocessing environment is based on message passing to allow tasks to run on multiple processes in separate memory domains all at once. 
The communication in Julia is not like the one used by [MPI](https://www.mpi-forum.org/docs/). 
It is *one-sided*, that is we only need to manage one process in a two-process operation.
These management instructions are also not sent/receive messages but calls to functions or something similar. 
For this Julia provides two primitives, *remote reference* and *remote calls*, the [documentation](https://docs.julialang.org/en/v1/manual/distributed-computing/) tells us: 
> A remote reference is an object that can be used from any process to refer to an object stored on a particular process. A remote call is a request by one process to call a certain function on certain arguments on another (possibly the same) process.

All of this is managed from the [`Distributed`](https://docs.julialang.org/en/v1/stdlib/Distributed/#man-distributed) package. 
It is easy to imagine, that the field of distributed computing can quickly become quite extensive, so let us look at some concepts that are useful for our $\pi$ example and give you an idea on how this works.

### The $\pi$ example for distributed computing

In order to start with distributed computing we need to add some distributed processes or *workers*. 
Similar as with threads each process has an associated identifier. The process providing the Julia REPL or the main call has id `1`. 
As long as there are more than two processes, each process that does not have id `1` is considered a worker process. 

We can add workers at startup:
```bash
$ julia -p 2
```
where we defined 2 workers on the local machine. 
We can also add workers from within Julia by calling 
```julia-repl
julia> using Distributed
julia> addprocs(4)
5
```
This added four workers and in total we have now 5 processes, hence the return value.
Consequently, we can remove workers again by calling
```julia-repl
julia> rmprocs(2:5)
Task (done) @0x00007fb859fc1430
```
and with `myid()` we get the id of the process we are on.  

### The `@distributed` macro

There is an obvious problem right away. 
If we define a function or a variable on a process how does another process know about this? 

The easiest concept is to run a parallel for loop. 
As before we can do this with a macro, namely the [`@distributed`](https://docs.julialang.org/en/v1/stdlib/Distributed/#Distributed.@distributed) macro. 
The general construct is
```julia
@distributed [reducer] for var = range
    body
end
```
>The specified range is partitioned and locally executed across all workers. In case an optional reducer function is specified, @distributed performs local reductions on each worker with a final reduction on the calling process.

>Note that without a reducer function, @distributed executes asynchronously, i.e. it spawns independent tasks on all available workers and returns immediately without waiting for completion. To wait for completion, prefix the call with @sync, like :
```julia
@sync @distributed for var = range
    body
end
```

\example{
What is the result for the following code snippet?
```julia-repl
julia> workers()
4-element Vector{Int64}:
 2
 3
 4 
 5

julia> a = zeros(5);

julia> @sync @distributed for i in 1:5
                              a[i] = i
                          end
```
}

Luckily, our $\pi$ example does not need much data movement. 

\exercise{
Define a new function `in_unit_circle_distributed1` with the `@distributed` macro and an appropriate *reducer* function (the syntax is `x = @distributed (operator) for ...`). Note that you might need to always return a value inside the loop. For comparison start 4 workers and test the accuracy and measure the performance.
\solution{
```julia
function in_unit_circle_distributed1(N::Int64)
    M = @distributed (+) for i in 1:N
        if (rand()^2 + rand()^2) < 1
            1
        else
            0
        end
    end

    return M
end

# more compact for with the ternary operator
function in_unit_circle_distributed1_1(N::Int64)
    M = @distributed (+) for i in 1:N
        (rand()^2 + rand()^2) < 1 ? 1 : 0
    end

    return M
end
```
and we test it
```julia-repl
julia> nprocs()
1
julia> addprocs(4)
5
julia> get_accuracy(in_unit_circle_distributed1, N)
  4.179204767140732e-5

julia> @btime estimate_pi(in_unit_circle_distributed1, N);
  649.564 ms (289 allocations: 12.27 KiB)
```
}
}

We can see that this is a very easy way to parallelize and this time the `rand()` function is not causing problems.
We are already faster than the basic implementation and close to the optimised four threads implementation.

The *distributed for loop* with `@distributed` is designed to work well for situations where each iteration is tiny. 
Of course there is also the other possibility, that we have a function with a massive workload and work with the results of these calls.

### The `pmap` and the `@everywhere` macro

As mentioned before, we need to get functions to all the workers, in order to execute them. 
For distributing a functions or for loading modules we can use the `@everywhere` macro. 
As the name suggests, it will make sure that the function is available in the scope of each worker and the main process. 
We simply prepend a function with `@everywhere` and nothing more is required. 
There are some things to note for this case:
- the function will be compiled on each worker on the first call.
- no local variables are captured but they can be broadcasted (arguments are broadcasted)
```julia
foo = 2
@everywhere bar = $foo
```
- the function will only be available on workers that were present during the call, every worker that is added later will not have it defined.
- a module can be loaded on every worker with `@everywhere using <modulename>`.

The function [`pmap`](https://docs.julialang.org/en/v1/stdlib/Distributed/#Distributed.pmap) is the parallel version of the [`map`](https://docs.julialang.org/en/v1/base/collections/#Base.map) function. 
Let us start with `map` before we go on to `pmap`.
The basic idea is to map a collection to a function by applying the function to each element. The result is again a collection.  
The syntax is as follows:
```julia
map(f, c...) -> collection
```
You can even include multiple collections and it will apply the function until one collection is exhausted. 

\example{
This examples is copied from the [docs](https://docs.julialang.org/en/v1/base/collections/#Base.map)
```julia-repl
julia> map(+, [1, 2, 3], [10, 20, 30, 400, 5000])
3-element Vector{Int64}:
 11
 22
 33

julia> map(x -> x * 2, [1, 2, 3])
3-element Vector{Int64}:
 2
 4
 6 
```
The second example also includes an [anonymous function](https://docs.julialang.org/en/v1/manual/functions/#man-anonymous-functions). 
The idea is simply to have a function that is not needed outside of the scope of a function call.
}

Now, `pmap` just distributes the map function on workers. 
It has a lot of optional arguments to influence how this is done but we will not need this. 

\exercise{
Define a new function `in_unit_circle_distributed2` with the `@everywhere` macro and the `pmap` function. Hint: define an inner function that is distributed to all workers via `@everywhere` and collect the results with `pmap`. Split up the works similar as for the last example in tasks. 

\solution{
```julia
@everywhere function in_unit_circle_distributed2_inner(N::Int64)
    M = 0
    
    for i in 1:N
        if (rand()^2 + rand()^2) < 1
            M += 1
        end
    end

    return M    
end

function in_unit_circle_distributed2(N::Int64)
    len, rem = divrem(N, nprocs() - 1)
    M = sum(
            pmap(
            (x) -> in_unit_circle_distributed2_inner(len), 2:nprocs()
            )
        )

    return M
end
```
and we test it
```julia-repl
julia> nprocs()
1
julia> addprocs(4)
5
julia> get_accuracy(in_unit_circle_distributed2, N)
  3.955314820203171e-5

julia> @btime estimate_pi(in_unit_circle_distributed2, N);
  648.168 ms (304 allocations: 13.11 KiB)
```
}
}

# Additional information on distributed computing

There is a lot more to say about distributed computing. 
Have a read in the [docs](https://docs.julialang.org/en/v1/manual/distributed-computing/) but here are some things we want to mention.  
For example Julia is able to define [shared arrays](https://docs.julialang.org/en/v1/manual/distributed-computing/#man-shared-arrays). 
A shared array means the content can be accessed by each worker and it is consistent over all workers.

Furthermore, it is possible to have a cluster, e.g. a managed pool of workers.
This cluster can be distributed on several machines. 
You can define various ways of accessing these machines so you can become really flexible about this and maybe start a worker on the laptop of a colleague. 
For this we have the [`ClusterManager`](https://docs.julialang.org/en/v1/manual/distributed-computing/#ClusterManagers) package.