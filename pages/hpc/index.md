@def title = "Parallel Computing"
@def hascode = true

@def tags = ["Parallel Computing"]

# Parallel computing with Julia

Since modern laptops and computers come with multiple cores, parallel computing is not just something for High Performance Computing systems. The general idea is to not only use a single computational thread (linear programming) but run concurring threads at the same time that solve the given task at hand in parallel. Julia by default supports different ways for active [parallel or concurring computing](https://docs.julialang.org/en/v1/manual/parallel-computing/). In this section we follow some of the examples given on [Julia Academy - JuliaTutorials](https://github.com/JuliaAcademy/JuliaTutorials).


@@important
Julia has an excellent section dedicated to general [performance tips](https://docs.julialang.org/en/v1/manual/performance-tips/) that are a good read every couple of months.
@@

This part covers the following sections:

1. [Measuring performance](performance/)
1. [Singe Instruction Multiple Data](simd/)
1. [$\pi$ example](pi/)
1. [Multithreading](multithreading/)
1. [Distributed computing](distributed/)
1. [GPU computing](gpu/)