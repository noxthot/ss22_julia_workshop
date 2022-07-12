@def title = "Parallel Computing - &pi;"
@def hascode = true

@def tags = ["Parallel Computing", "Pi example"]

# Not the most efficient way of computing $\pi$

As you very well know, there are a lot of ways to compute $\pi$. There is even a [blog entry](https://julialang.org/blog/2017/03/piday/) in the Julia blog for that. Nevertheless, we decided for a different method (that is part of the introductory courses on [JuliaAcademy](https://juliaacademy.com/)).

A circle with radius $r$ has an area of 
$$A_{circle} = \pi r^2$$
and the square that encases it 
$$A_{square} = 4 r^2.$$

The ratio between the area of the circle and the area of the square is therefore
$$
\frac{A_{circle}}{A_{square}} = \frac{\pi r^2}{4 r^2} = \frac{\pi}{4}
$$
and we can define $\pi$ as
$$
\pi = 4\frac{A_{circle}}{A_{square}}.
$$
The same is true if we just take the first quadrant, so $\frac14$ of the square as well as the circle. This simplification will make the code more compact and faster. 

The above formula suggests that we can compute $\pi$ by a [Monte Carlo Method](https://en.wikipedia.org/wiki/Monte_Carlo_method). Actually this example is also included in the Wiki article and it comes with this nice gif.

\figenv{Simulation of the Monte Carlo Method for computing &pi;. <br>Original source: https://commons.wikimedia.org/wiki/File:Pi_30K.gif}{/assets/pages/hpc/Pi_30K.gif}{}

The algorithm therefore becomes:
1. For a given number $M$ of uniformly scattered points in the quadrant determine if these points are in the circle (distance less than 1) or not. We call the number of points in the circle $N$. 
1. Estimate $\pi$ by computing 
$$
\pi \approx 4  \frac{N}{M}.
$$

\exercise{
Implement the above described algorithm to compute $\pi$.
1. Define a function that determines $M$ for a given integer $N$.
1. Define a function that estimates $\pi$ for a given function $f$ and integer $N$.
1. Test your code with different values for $N$.

Help: The function `rand()` will give you a uniformly scattered point in the interval $[0,1]$.
\solution{
```julia:./code/pi.jl
function in_unit_circle(N::Int64)
    M = 0
    
    for i in 1:N
        if (rand()^2 + rand()^2) < 1
            M += 1
        end
    end

    return M
end

function estimate_pi(f::Function, N::Int64)
    return 4 * f(N) / N
end

function get_accuracy(f::Function, N::Int64)
    return abs(
        estimate_pi(f, N) - pi
        )
end

N = 2^30
get_accuracy(in_unit_circle, N)
```
\show{./code/pi.jl}
}
}