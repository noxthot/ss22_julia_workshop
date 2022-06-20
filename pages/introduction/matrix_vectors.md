@def title = "Matrix and Vector Operations"
@def hascode = true

@def tags = ["introduction"]

# Basic Matrix and Vector Operations

In Julia vectors and matrices are derived from the basic [`Core.AbstracArray`](https://docs.julialang.org/en/v1/base/arrays/#lib-arrays) type. To get a better idea on what is happening we show the examples when typed into Julia REPL. 

## Vectors
You can allocate a vector by typing:
```julia
julia> v = [1, 2, 3]
3-element Vector{Int64}:
 1
 2
 3
```
As you can see, Julia found out that all the numbers are integers and therefore you have now a 3-element Vector of the type Int64 defined. You can now do operations on this vector in the usual fashion:
```julia
julia> v*2
3-element Vector{Int64}:
 2
 4
 6

julia> v/2
3-element Vector{Float64}:
 0.5
 1.0
 1.5

julia> v//2
3-element Vector{Rational{Int64}}:
 1//2
 1//1
 3//2
```
@@important
Note that the type of your vector changes with regards to the result of the operation. 
@@

If you try to define the vector without the `,` you will generate a 1x3 Matrix:
```julia
julia> w = [1 2 3]
1×3 Matrix{Int64}:
 1  2  3
 ```
 Julia was designed by mathematicians, this might explain some of the notions regarding the conventions in Julia.

 We can also do the *adjoined* operation but note that Julia will remember this:
 ```julia
julia> w'
3×1 adjoint(::Matrix{Int64}) with eltype Int64:
 1
 2
 3
 ```

## Matrices
 If we have vectors the jump to matrices is not very far. Simply wrap everything in another set of brackets and we are good to go:
 ```julia
 julia> A = [[1, 2, 3] [4, 5, 6] [7, 8, 9]]
3×3 Matrix{Int64}:
 1  4  7
 2  5  8
 3  6  9
 ```
 Note, that we specified the three column vectors and combined them into a 3x3 matrix. 
 The row wise definition looks like this:
 ```julia
julia> B = [1 2 3; 4 5 6; 7 8 9]
3×3 Matrix{Int64}:
 1  2  3
 4  5  6
 7  8  9
 ```
 where we use `;` to separate the rows.

Again, the basic operations ship with Julia and you need not additional packages. 
```julia
julia> A+A*2im
3×3 Matrix{Complex{Int64}}:
 1+2im  4+8im   7+14im
 2+4im  5+10im  8+16im
 3+6im  6+12im  9+18im

 ```
 It comes to not much surprise that the matrix-vector multiplication is 
 ```julia
julia> A*v
3-element Vector{Int64}:
 30
 36
 42
 ```
## Point-wise operations
 Quite often it is necessary to do point-wise operations on matrices. In order to do so we prepend a `.` before the operation:
 ```julia
 julia> A*v
3-element Vector{Int64}:
 30
 36
 42
 julia> A.*v
3×3 Matrix{Int64}:
 1   4   7
 4  10  16
 9  18  27
 julia> A.^2
3×3 Matrix{Int64}:
 1  16  49
 4  25  64
 9  36  81
julia> A^2
3×3 Matrix{Int64}:
 30  66  102
 36  81  126
 42  96  150

```

## Access specific elements

Indexing in Julia starts with 1 and we use `[]`. So in order to compute $v_2 A_{1,2}$ we say
```julia
julia> v[2]
2
julia> A[1,2]
4
julia> v[2] * A[1,2]
8
```
You can also use the `end` keyword and the `:` placeholder to access a range of elements:
```julia
julia> A[:,end-2]
3-element Vector{Int64}:
 1
 2
 3
```
To find the entire list of operations that can be performed and a lot more on arrays in Julia visit the [docs](https://docs.julialang.org/en/v1/base/arrays/#lib-arrays).

# Linear Algebra

As soon as you include the [`LinearAlgebra`](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) or the [`SparseLinearAlgebra`](https://docs.julialang.org/en/v1/stdlib/SuiteSparse/) package you have a lot more operations available, both are part of the Julia Standard Library.
```julia
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
julia> sA\v
3-element Vector{Float64}:
 0.29999999999999993
 1.1102230246251565e-16
 0.09999999999999995
```
The rest you need to know about vectors and matrices we will introduce along the way.
