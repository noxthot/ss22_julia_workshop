@def title = "Package Manager"
@def hascode = true

@def tags = ["introduction"]

# Package manager

We have already worked a little bit with the Julia [package manager](https://docs.julialang.org/en/v1/stdlib/Pkg/). In the following we will discuss this feature in more detail. You already know how to open the package manager: To open the package manager press `]` and with `?` you open the help page. Now, in order to for example add the [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) package type 
```julia-repl
(@v1.7) pkg> add LinearAlgebra
```
Now, everytime you open Julia, you can type
```julia-repl
julia> using LinearAlgebra
```
which adds various linear algebra related functionalities to your session. We will discuss details of this specific package later. In the case you wish to remove this package you can open the package manager and type
```julia-repl
(@v1.7) pkg> rm LinearAlgebra
```
Moreover, you can update all packages that you have added by typing
```julia-repl
(@v1.7) pkg> update
```
or just a specific package (for example LinearAlgebra) by typing
```julia-repl
(@v1.7) pkg> update LinearAlgebra
```
To get a list of all installed packages you can type
```julia-repl
(@v1.7) pkg> status
```
Quite often you want to only add certain packages for certain projects. This can be done by creating a new package environment. This can for example become handy when you want to add packages to your projects which have conflicts with already loaded packages. In this case open a new environment (which we call example) by typing
```julia-repl
(@v1.7) pkg> activate example
```
If you check this new environment with the `status` command you will see that you have a clean package environment. You can return to the default environment by typing `activate`.

\exercise{
    Let us practice the learned concepts a little bit.
1. Create a new environment called `SummerSchool`.
2. Apply this matrix to a random vector `v = rand(5)` and normalize the result. That is, $v_{\mathrm{new}} = Av/\Vert Av\Vert$.
3. Repeat this process using $v_{\mathrm{new}}$ as input (i.e., $v\leftarrow v_{\mathrm{new}}$) until $\Vert v_{\mathrm{new}}- v \Vert < 10^{-5}$ using a `while` loop.
4. Print out $A\cdot v_{\mathrm{new}}$ and check against the eigenvalues of $A$ using `eigvals(A)`.

\solution{
```julia
using LinearAlgebra
# 1.
N = 5
A = zeros(N, N)

for i in 1:N
    for j in 1:N
        A[i, j] = (i - j) ^ 2;
    end
end

# 2.
v = rand(N);
vNew = A * v / norm(A * v)

#3.
while norm(v - vNew) > 1e-5
    v .= vNew
    vNew .= A * v ./ norm(A * v)
end
#4.
println("Approximated dominant eigenvalue is ", norm(A * vNew))
```
}
}