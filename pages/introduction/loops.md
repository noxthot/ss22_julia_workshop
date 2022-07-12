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
Here, Julia performs instructions inside the loop body for $i = 1, \ldots, N$. You can modify the iterates by `for i in indexStart:increment:indexEnd`. Hence, if we want to iterate from $N$ to $1$ with an increment of $2$, we have 
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
    We want to compute the dominant eigenvalue of a matrix $A$. That is, we wish to find the maximal scalar values $\lambda$ such that there exists a vector $v$ which fulfills $Av = \lambda v$.
1. Create a matrix $A\in\mathbb{R}^{5 \times 5}$ with entries $A_{ij} = (i-j)^2$ using a `for` loop. 
2. Apply this matrix to a random vector `v = rand(5)` and normalize the result. That is, $v_{\mathrm{new}} = Av/\Vert Av\Vert$.
3. Repeat this process using $v_{\mathrm{new}}$ as input (i.e., $v\leftarrow v_{\mathrm{new}}$) until $\Vert v_{\mathrm{new}}- v \Vert < 10^{-5}$ using a `while` loop.
4. Print out $A\cdot v_{\mathrm{new}}$ and check against the eigenvalues of $A$ using `eigvals(A)`.

\solution{
```julia
using LinearAlgebra
# 1.
N = 5
A = zeros(N,N)

for i in 1:N
    for j in 1:N
        A[i, j] = (i - j)^2;
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

In order to stop a loop or skip an evaluation of the loop body at a specific iteration index, if a certain condition is fulfilled, we can use the `break` and `continue` commands. The `break` command will exit the loop. A simple example is
```julia:./code/loop.jl
for i in 1:10
    if i > 5
        break
    end

    println("Iteration index is ", i)
end
println("Loop stopped.")
```
\show{./code/loop.jl}
This will print out the iteration index until a value of $i=6$ is reached, at which point the loop will be exited. The `continue` statement allows us to skip an iterate.
```julia:./code/loop.jl
for i in 1:10    
    if i == 5
        continue
    end

    println("Iteration index is ", i)
end
```
\show{./code/loop.jl}
This prints out numbers from $1$ to $10$ but skips the number $5$.

@@important
Note that opposed to the `if` statement, loops are not leaky. That is, new variables defined inside a loop will be unknown outside the loop body.
@@
