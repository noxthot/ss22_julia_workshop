@def title = "Parallel Computing"
@def hascode = true

@def tags = ["ParallelComputing"]

# Parallel computing with Julia

Since modern laptops and computers come with multiple cores parallel computing is not just something for High Performance Computing systems. The general idea is to not only use a single computational thread (linear programming) but run concurring threads at the same time that solve the given task at hand in parallel. Julia by default supports different ways for active [parallel or concurring computing](https://docs.julialang.org/en/v1/manual/parallel-computing/). In this section we follow some of the examples given on [Julia Academy - JuliaTutorials](https://github.com/JuliaAcademy/JuliaTutorials).

Before we are are going into the details of parallel coding we need to talk about how to measure performance in Julia.

# Concept for how to go further

- introduce multithreading and adapt the $\pi$ example
- introduce multiple processes and adapt the $\pi$ example
- introduce "cluster" and adapt $\pi$ example
- bring it to the GPU - show and tell, if the have gpus let them test
- Repeat what we learned today
- If on last day Q/A section