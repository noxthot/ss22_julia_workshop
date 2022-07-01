@def title = "Loops"
@def hascode = true

@def tags = ["introduction"]

# Loops

Just as any scientific programming language, Julia has different variants to implement loops. The perhaps most common one is the `for` loop
```julia
for i in 1:N
    # loop body
end
```
Here, Julia performs instructions inside the loop body for $i = 1,\cdots,N$. You can modify the iterates by `for i in indexStart:increment:indexEnd`. Hence, if we want to iterate from $N$ to $1$ with an increment of $2$, we have 
```julia
for i in N:-2:1
    # loop body
end
```
If we want to iterate over a list or vector $v$, we can use `for i in v`. In this case, $i$ will take values in the vector $v$. 

A further loop that can be used is the `while` loop, which performs a given instruction as long as a specified condition holds. Our previous example written as a while loop looks like this
```julia
while i <= N
    # loop body
    i = i - 2
end
```

\exercise{
    As an exercise, we compute the dominant eigenvalue of a matrix $A$. That is, we wish to find the maximal scalar values $\lambda$ such that there exists a vector $v$ which fulfills $Av = \lambda v$.
1. Create a matrix $A\in\mathbb{R}^{5 \times 5}$ with entries $A_{ij} = (i-j)^2$ using a `for` loop. 
2. Apply this matrix to a random vector `v = rand(5)` and normalize the result. That is, $v_{\mathrm{new}} = Av/\Vert Av\Vert$.
3. Repeat this process using $v_{\mathrm{new}}$ as input (i.e., $v\leftarrow v_{\mathrm{new}}$) untill $\Vert v_{\mathrm{new}}- v \Vert < 10^{-5}$ using a `while` loop.
4. Print out $A\cdot v_{\mathrm{new}}$ and check against the eigenvalues of $A$ using `eigvals(A)`.

\solution{
```julia
using LinearAlgebra
# 1.
N = 5
A = zeros(N,N)

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

In order to stop a loop or skip an evaluation of the loop body at a specific iteration index if a certain condition is fulfilled we can use the `break` and `continue` commands. The `break` command will exit the loop. A simple example is
```julia
for i = 1:10
    
    if i > 5
        break
    end

    println("Iteration index is ", i)
end
println("Loop stopped.")
```
This will print out the iteration index untill a value of $i=6$ is reached at which point the loop will be exited. The `continue` statement allows us to skip an iterate.
```julia
for i = 1:10
    
    if i == 5
        continue
    end

    println("Iteration index is ", i)
end
```
This prints out numbers from $1$ to $10$ but skips the number $5$.

@@important
Note that opposed to the `if` statement, loops are not leaky. That is, new variables defined inside a loop will be unknown outside the loop body.
@@

@@important
I would like to reuse the result of this example/exercise in the parallel section
@@

\exercise{
For a vector $V\in\mathrm{R}^n$ with elements $v$ compute the sum of all the elements in the following fashion
    
1. Sum over the elements per index:
    $$s_1 = \sum_{i=1}^n v_i$$
2. Sum over the elements (hint `for each`):
    $$s_2 = \sum_{v\in V} v$$
3. Transform these loops into functions
4. Test against `V = rand(100_000)` and `s_1 ≈ s_2` (use `\approx + TAB` for ≈)
    
Extra: Check the `@inbounds` macro for the first version.

\solution{
```julia
function mysum1(V)
    s = zero(eltype(V))
    for i in eachindex(V)
        s += V[i]
    end
    return s
end

function mysum2(V)
    s = zero(eltype(V))
    for v in V
        s += v
    end
    return s
end

V = rand(100_000)
mysum1(V) ≈ mysum2(V)
isapprox(mysum1(V),  mysum2(V); atol=1e-10, rtol=1e-10)
```
}
}
