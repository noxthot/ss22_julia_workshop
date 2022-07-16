@def title = "Matrix and Vector Operations"
@def hascode = true

@def tags = ["introduction"]

# Basic Matrix and Vector Operations

In Julia vectors and matrices are derived from the basic [`Core.AbstracArray`](https://docs.julialang.org/en/v1/base/arrays/#lib-arrays) type. To get a better idea on what is happening we use the Julia REPL to type up some examples. 

## Vectors
We can allocate a vector by typing:
```julia-repl
julia> v = [1, 2, 3]
3-element Vector{Int64}:
 1
 2
 3
```
As we can see, Julia found out that all the numbers are integers and therefore we have now defined a 3-element vector of type `Int64`. 
Alternatively, if we want to generate a vector with zeros, ones or random numbers, we can use
```julia-repl
julia> w = zeros(3)
3-element Vector{Float64}:
 0.0
 0.0
 0.0

julia> w = ones(3)
3-element Vector{Float64}:
 1.0
 1.0
 1.0

julia> w = rand(3)
3-element Vector{Float64}:
 0.5895742185814302
 0.7384134175744227
 0.5859991546122274
```
which automatically assumes the types to be `Float64`. If we want to specify a certain data type, we can use `w = zeros(Int64, 3)`. If we want to create a vector with entries ranging from $0$ to $1$ with $3$ entries, we write
```julia-repl
julia> u = collect(range(0, 1, 3))
3-element Vector{Float64}:
 0.0
 0.5
 1.0
```
We can now do operations on a vector in the usual fashion:
```julia-repl
julia> v * 2
3-element Vector{Int64}:
 2
 4
 6

julia> v / 2
3-element Vector{Float64}:
 0.5
 1.0
 1.5

julia> v // 2
3-element Vector{Rational{Int64}}:
 1//2
 1//1
 3//2
```
@@important
Note that the type of our vector changes with regards to the result of the operation. 
@@

If we try to define the vector without the `,` separator we will generate a $1 \times 3$ matrix:
```julia-repl
julia> w = [1 2 3]
1×3 Matrix{Int64}:
 1  2  3
 ```
 Julia was designed by mathematicians, this might explain some of the notions regarding the conventions in Julia.

 We can also do the *adjoined* operation but note that Julia will remember this:
 ```julia-repl
julia> w'
3×1 adjoint(::Matrix{Int64}) with eltype Int64:
 1
 2
 3
 ```

## Matrices
 If we have vectors, the jump to matrices is not very far. Again, we have the command
```julia-repl
julia> B = ones(3, 3)
3×3 Matrix{Float64}:
 1.0  1.0  1.0
 1.0  1.0  1.0
 1.0  1.0  1.0
```
The same holds for `zeros` and `rand`. To directly specify values inside a matrix, we simply wrap the code used for vectors in another set of brackets and we are good to go:
 ```julia-repl
 julia> A = [[1, 2, 3] [4, 5, 6] [7, 8, 9]]
3×3 Matrix{Int64}:
 1  4  7
 2  5  8
 3  6  9
 ```
 Note, that we specified the three column vectors and combined them into a $3 \times 3$ matrix. 
 The row wise definition looks like this:
 ```julia-repl
julia> B = [1 2 3; 4 5 6; 7 8 9]
3×3 Matrix{Int64}:
 1  2  3
 4  5  6
 7  8  9
 ```
 where we use semicolon `;` to separate the rows.

Again, the basic operations ship with Julia and we need no additional packages. 
```julia-repl
julia> A + A * 2im
3×3 Matrix{Complex{Int64}}:
 1+2im  4+8im   7+14im
 2+4im  5+10im  8+16im
 3+6im  6+12im  9+18im
 ```

 It comes to not much surprise that the matrix-vector multiplication is 
 ```julia-repl
julia> A * v
3-element Vector{Int64}:
 30
 36
 42
 ```
## Point-wise operations
 Quite often it is necessary to do point-wise operations on matrices. In order to do so we prepend a dot `.` before the operation:
 ```julia-repl
julia> A * v
3-element Vector{Int64}:
 30
 36
 42

julia> A .* v
3×3 Matrix{Int64}:
 1   4   7
 4  10  16
 9  18  27

julia> A^2
3×3 Matrix{Int64}:
 30  66  102
 36  81  126
 42  96  150

julia> A .^ 2
3×3 Matrix{Int64}:
 1  16  49
 4  25  64
 9  36  81
```

## Access specific elements

Indexing in Julia starts with 1 and we use square brackets `[]` for accessing specific elements. So in order to compute $v_2 A_{1,2}$ we have
```julia-repl
julia> v[2]
2

julia> A[1, 2]
4

julia> v[2] * A[1, 2]
8
```

We can also use the `end` keyword and the colon `:` placeholder to access a range of elements:
```julia-repl
julia> A[:,end-2]
3-element Vector{Int64}:
 1
 2
 3
```
# Concatenation

We can also concatenate (or slice together) different matrices and vectors. I.e., if we have a matrix `A = zeros(2, 4)` and a vector `a = ones(2)` we can add $a$ as a column to $A$ by 
```julia-repl
julia> A = zeros(2, 4)
2×4 Matrix{Float64}:
 0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0

julia> a = ones(2)
2-element Vector{Float64}:
 1.0
 1.0

julia> B = [A a]
2×5 Matrix{Float64}:
 0.0  0.0  0.0  0.0  1.0
 0.0  0.0  0.0  0.0  1.0
```

We can also add a row $b$ by
```julia-repl
julia> b = 2 .* ones(5)
5-element Vector{Float64}:
 2.0
 2.0
 2.0
 2.0
 2.0

julia> C = [B; b']
3×5 Matrix{Float64}:
 0.0  0.0  0.0  0.0  1.0
 0.0  0.0  0.0  0.0  1.0
 2.0  2.0  2.0  2.0  2.0
```

\exercise{
  TODO
}

To find the entire list of operations that can be performed and a lot more on arrays in Julia visit the [docs](https://docs.julialang.org/en/v1/base/arrays/#lib-arrays).

# Linear Algebra

As soon as we include the [`LinearAlgebra`](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) or the [`SparseLinearAlgebra`](https://docs.julialang.org/en/v1/stdlib/SuiteSparse/) package we have a lot more operations available, both are part of the Julia Standard Library.
```julia-repl
julia> using LinearAlgebra
julia> tr(A)
15

julia> eigvals(A)
3-element Vector{Float64}:
 -1.1168439698070436
 -5.70069118970987e-16
 16.116843969807064

julia> sA = Symmetric(A)
3×3 Symmetric{Int64, Matrix{Int64}}:
 1  4  7
 4  5  8
 7  8  9

julia> sA \ v
3-element Vector{Float64}:
 0.29999999999999993
 1.1102230246251565e-16
 0.09999999999999995
```
A further functionality of the LinearAlgebra package is given by efficient storage routines for sparse matrices, i.e., matrices that are zero except for a small number of entries. A very common sparse matrix is a diagonal matrix. To create a diagonal matrix $D$ which has entries $d = (d_1, \cdots, d_{10})$ on the diagonal, we can use `D = Diagonal(d)`. If the matrix is a tridiagonal matrix, that is, it has the form
$$
\mathbf{T} = \begin{pmatrix}
    b_1 & c_1 &  &      &   \\
    a_1  & b_2       & c_2   &     &    \\
      &         & \ddots         & \ddots    &     \\
      &         &    \ddots       &     b_{N-1}      & c_{N-1}   \\
      &         &           &     a_{N-1}      & b_N
  \end{pmatrix}\;,
$$ 
we can use `T = Tridiagonal(a, b, c)`.
The rest we need to know about vectors and matrices we will introduce along the way.

\exercise{
1. Create a sparse matrix $\mathbf{T}\in\mathbb{R}^{10 \times 10}$ of the form
$$
\mathbf{L} = \begin{pmatrix}
    -1 & 1 &   &      &   \\
      & -1       & 1   &      &    \\
      &         & -1         & \ddots    &     \\
      &         &           &    \ddots      & 1   \\
      &         &           &           & -1
\end{pmatrix}\;.
$$
2. Compute a vector $\mathbf{x}$ such that $\mathbf{L}\mathbf{x} = \mathbf{1}$ where $\mathbf{1} = (1,\cdots,1)^{\top}$.

\solution{
1. We can store this matrix by again using a tridiagonal matrix which has a zero lower off-diagonal. That is,
```julia-repl
julia> L = Tridiagonal(zeros(9), -ones(10), ones(9))
10×10 Tridiagonal{Float64, Vector{Float64}}:
 -1.0   1.0    ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅ 
  0.0  -1.0   1.0    ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅ 
   ⋅    0.0  -1.0   1.0    ⋅     ⋅     ⋅     ⋅     ⋅     ⋅ 
   ⋅     ⋅    0.0  -1.0   1.0    ⋅     ⋅     ⋅     ⋅     ⋅ 
   ⋅     ⋅     ⋅    0.0  -1.0   1.0    ⋅     ⋅     ⋅     ⋅ 
   ⋅     ⋅     ⋅     ⋅    0.0  -1.0   1.0    ⋅     ⋅     ⋅ 
   ⋅     ⋅     ⋅     ⋅     ⋅    0.0  -1.0   1.0    ⋅     ⋅ 
   ⋅     ⋅     ⋅     ⋅     ⋅     ⋅    0.0  -1.0   1.0    ⋅ 
   ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅    0.0  -1.0   1.0
   ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅     ⋅    0.0  -1.0

```
2. We can use the backslash operator to solve the system:
```julia-repl
julia> y = ones(10);

julia> x = L \ y
10-element Vector{Float64}:
 -10.0
  -9.0
  -8.0
  -7.0
  -6.0
  -5.0
  -4.0
  -3.0
  -2.0
  -1.0

```
}

$\,$
}

