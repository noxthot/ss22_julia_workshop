@def title = "Functions"
@def hascode = true

@def tags = ["introduction"]

# Functions

## Syntax
To improve the structure and ensure reusability of pieces of our program we can use the `function` command. We have already used functions when, for example, calling `typeof(input)`. Other examples of functions that can be found on any common calculators are `sin(x)` or `exp(x)`. The syntax to define our own functions is the following:
```julia
function foo(input)
    # function body that is executed when foo is called

    return output
end
```
So if we want to define a function which prints out and returns $\sin(\cos(x))$ we can write
```julia
function sincos(x)
    result = sin(cos(x))
    println("sin(cos($x)) = $result")
    
    return result
end
```
If we wish to specify multiple inputs and outputs we can do so as well:
```julia
function sincos(x, y)
    result1 = sin(cos(x))
    result2 = sin(cos(y))
    
    println("sin(cos($x)) = $result1")
    println("sin(cos($y)) = $result2")
    
    return result1, result2
end
```
We can call a function with multiple outputs via `out = foo(input)` and access the output at index $i$ through `out[i]`. We can also write (assuming two outputs) `out1, out2 = foo(input)` and `out1, _ = foo(input)` if we only need one of the outputs.
```julia-repl
julia> x = 1; y = 1.5;
julia> res1, res2 = sincos(x, y)
sin(cos(1)) = 0.5143952585235492
sin(cos(1.5)) = 0.07067822452613834
(0.5143952585235492, 0.07067822452613834)

julia> res1
0.5143952585235492

julia> res = sincos(x, y);

julia> res[1]
0.5143952585235492
```

Let us practice this syntax by revisiting loops:

\exercise{
For a vector $V\in\mathrm{R}^n$ with elements $v$ compute the sum of all the elements in the following fashion
    
1. Sum over the elements per index:
    $$s_1 = \sum_{i=1}^n v_i$$
2. Sum over the elements (hint `for each`):
    $$s_2 = \sum_{v\in V} v$$
3. Transform these loops into functions `mysum1` and `mysum2`
4. Test against `V = rand(100_000)` and `s_1 ≈ s_2` (use `\approx + TAB` for ≈)

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


## Call by reference
Julia functions do not copy the input but directly operate on the input data. This means that changing values of the input in the function body will also change this data for the function caller. Whenever we define a function which will modify the input, we should indicate this with a `!` behind the function name:
```julia
function sincos!(x)
    x .= sin.(cos.(x))
    return x
end
```
Calling this function leads to
```julia-repl
julia> x = ones(2);
julia> println("Function value is ", sincos!(x))
Function value is [0.5143952585235492, 0.5143952585235492]

julia> x
2-element Vector{Float64}:
 0.5143952585235492
 0.5143952585235492
```

\exercise{

Consider two implementations
```julia
function sincos1!(x)
    x .= sin.(cos.(x))
    return x
end
```
and
```julia
function sincos2!(x)
    x = sin.(cos.(x))
    return x
end
```
1. Evaluate both functions with the input `x = ones(2)`. How does $x$ change after calling the function? Explain this behavior. Correct the function names accordingly.
2. Build in the function `pointer_from_objref(x)` to see how the memory changes and to validate your previous answer.
3. Write a method which evaluates $\sin(\cos(x))$, where $x\in\mathbb{R}$ is a scalar and stores the result on $x$ such that $x$ is modified for the caller.
\solution{
1. The function `sincos1!(x)` will modify the input:
```julia-repl
julia> x = ones(2);

julia> sincos1!(x);

julia> x
2-element Vector{Float64}:
 0.5143952585235492
 0.5143952585235492
```
The function `sincos2!(x)` will not modify the input:
```julia-repl
julia> x = ones(2);

julia> sincos2!(x);

julia> x
2-element Vector{Float64}:
 1.0
 1.0
```
The reason for this behavior is that `sincos1` changes the input as Julia functions work with call-by-reference. I.e., they do not generate a local copy of the input and instead directly work on the same memory that has been used by the caller. This memory is not reallocated due to the use of `.=`. On the other hand, `sincos2` allocates new memory, since `x = sin.(cos.(x))` will create new memory for `x` on which the values of `sin.(cos.(x))` are stored. Hence, the memory of $x$ known to the caller is not modified and the original values are preserved. Note that the name `sincos2!(x)` is hence misleading and the function should be renamed to `sincos2(x)`.
2. We have
```julia
function sincos1!(x)
    println("Address input: ", pointer_from_objref(x))
    x .= sin.(cos.(x))
    println("Address output: ", pointer_from_objref(x))
    return x
end
```
and
```julia
function sincos2(x)
    println("Address input: ", pointer_from_objref(x))
    x = sin.(cos.(x))
    println("Address output: ", pointer_from_objref(x))
    return x
end
```
Then,
```julia-repl
julia> x = ones(2);

julia> y = sincos1!(x);
Address input: Ptr{Nothing} @0x00007f3325795b90
Address output: Ptr{Nothing} @0x00007f3325795b90

julia> x = ones(2);

julia> println("Address caller: ", pointer_from_objref(x));
Address caller: Ptr{Nothing} @0x00007f332671cab0

julia> y = sincos1!(x);
Address input: Ptr{Nothing} @0x00007f332671cab0
Address output: Ptr{Nothing} @0x00007f332671cab0

julia> y = sincos2(x);
Address input: Ptr{Nothing} @0x00007f332671cab0
Address output: Ptr{Nothing} @0x00007f33266e2310
```
3. This is not possible, since assigning a new value to a scalar $x$ will always alter the memory location.
}
}

## Multiple dispatch
One might have observed that since we did not specify any data types, we were able to call functions using vectors and scalars. However, if we call `sincos1!(1.0)` we see that this might not always be the best idea. Some functions should only be called with a certain data type. We can specify the data type of input and output in the following way:
```julia
function sincos1!(x::Array{Float64, 1})
    x .= sin.(cos.(x))
    return x
end
```
In the same way, we can define functions that have the same name but which perform different operations depending on the data type. For example, we can define the function `sincos(x)` which evaluates $\sin(\cos(x))$ when $x$ is a matrix or vector and returns a vector. In order to rearrange a matrix $M$ to a vector $m$ we can use `m = vec(M)`. Then, we get:
```julia
function sincos(x::Array{Float64, 1})
    println("My input is a vector.")
    return sin.(cos.(x))
end

function sincos(x::Array{Float64, 2})
    println("My input is a matrix.")
    return vec(sin.(cos.(x)))
end
```
Calling these functions gives
```julia-repl
julia> x = ones(2, 2);

julia> sincos(x)
My input is a matrix.
4-element Vector{Float64}:
 0.5143952585235492
 0.5143952585235492
 0.5143952585235492
 0.5143952585235492

julia> x = ones(4);

julia> sincos(x)
My input is a vector.
4-element Vector{Float64}:
 0.5143952585235492
 0.5143952585235492
 0.5143952585235492
 0.5143952585235492
```

## Element-wise operations and input specifications
As always, we can use the dot operation `.` to evaluate an array of inputs element-wise. Define the scalar function
```julia
function sincos(x::Float64)
    return sin(cos(x))
    
end
```
and run
```julia-repl
julia> x = ones(2, 3);

julia> sincos.(x)
2×3 Matrix{Float64}:
 0.514395  0.514395  0.514395
 0.514395  0.514395  0.514395
```

Moreover, we can assign values to inputs in the function definition. If the caller does not specify the input, these values will be used instead.
```julia
function sincos(x::Float64 = 0.5 * pi)
    return sin.(cos.(x))
end
```
We can now call this function via
```julia-repl
julia> sincos()
6.123233995736766e-17

julia> sincos(0.0)
0.8414709848078965
```

## Parametric types for functions

Notice that it is very restrictive to tell our method to only accept inputs of type `Float64`. It makes perfect sense to evaluate our function at $x = 1$, where $x$ can be an integer. In fact, it is considered to be good practice if we make function inputs as general as possible. Just as for *structs*, we can use parametric types to make the input more general. If we want the input to be a real number (i.e., a subtype of `Real`), we can write this as 
```julia
function sincos(x::T) where T<:Real
    return sin(cos(x))
end
```
Now, `T` can be any subtype of `Real`, that is, we can write
```julia-repl
julia> sincos(1)
0.5143952585235492

julia> sincos(1.0)
0.5143952585235492

julia> sincos(1//2)
0.7691963548410085
```

\exercise{
    Write a function `sincos` which can take any real number as well as the point struct we defined earlier
```julia
struct Point{T}
    x::T
    y::T
end
```
    where `T` must be a real number as input. When the input is an object of type Point, the function returns $\sin(\cos(\Vert x \Vert))$, where $\Vert x \Vert = \sqrt{x^2 + y^2}$ is the Euclidean norm.
\solution{
```julia
struct Point{T<:Real}
    x::T
    y::T
end

function sincos(x::T) where T<:Real
    return sin(cos(x))
end

function sincos(x::Point{T}) where T<:Real
    norm = sqrt(x.x^2 + x.y^2)
    return sin(cos(norm))
end
```
Then, we get
```julia-repl
julia> p = Point{Float64}(1.0, 2.0)
Point{Float64}(1.0, 2.0)

julia> sincos(p)
-0.578813455551511

julia> pim = Point{Complex}(1im, 2.0)
Point{Complex}(0 + 1im, 2.0 + 0.0im)

julia> sincos(pim)
ERROR: MethodError: no method matching sincos(::Point{Complex})
You may have intended to import Base.sincos
Closest candidates are:
  sincos(::T) where T<:Real at REPL[3]:1
  sincos(::Point{T}) where T<:Real at REPL[4]:1
Stacktrace:
 [1] top-level scope
   @ REPL[9]:1
```
}
}

## Constructors
Note from the previous exercise, that it might be convenient if every object of type Point computes and stores the norm. Of course this can be done by defining
```julia
struct PointFull{T<:Real}
    x::T
    y::T
    norm
end
```
and creating objects of type `PointFull` via
```julia-repl
julia> p = PointFull{Float64}(1.0, 2.0, sqrt(1.0^2 + 2.0^2))
PointFull{Float64}(1.0, 2.0, 2.23606797749979)

julia> p = PointFull{Float32}(1.0, 2.0, sqrt(1.0^2 + 2.0^2))
PointFull{Float32}(1.0f0, 2.0f0, 2.23606797749979)

julia> p = PointFull{Int64}(1, 2, sqrt(1 + 2))
PointFull{Int64}(1, 2, 1.7320508075688772)
```
Note that this is quite tedious since we need to copy paste the same formula for the norm every time we construct on object. Conveniently, Julia provides us with [constructors](https://docs.julialang.org/en/v1/manual/constructors/#man-constructors), which are functions that are called whenever we create on object of our struct. The syntax is the following:
```julia
struct PointFull1{T<:Real}
    x::T
    y::T
    norm
    function PointFull1(x::T, y::T) where {T<:Real}
        norm = sqrt(x^2 + y^2)
        new{T}(x, y, norm)
    end
end
```
Now, we can call
```julia-repl
julia> PointFull1(1.0,2.0)
PointFull1{Float64}(1.0, 2.0, 2.23606797749979)

julia> PointFull1(1,2)
PointFull1{Int64}(1, 2, 2.23606797749979)

julia> PointFull1(1im,2im)
ERROR: MethodError: no method matching PointFull1(::Complex{Int64}, ::Complex{Int64})
Stacktrace:
 [1] top-level scope
   @ REPL[20]:1
```