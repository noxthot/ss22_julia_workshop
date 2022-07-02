@def title = "Functions"
@def hascode = true

@def tags = ["introduction"]

# Functions
To improve the structure and ensure reusability of pieces of you program you can use the `function` command. You have already used functions when for example calling `typeof(input)`. Other examples of functions that can be found on any common calculator are `sin(x)` or `exp(x)`. The syntax to define your own functions is the following:
```julia
function foo(input)
    # function body that is executed when foo is called
    return output
end
```
So if you want to define a function which prints out and returns $sin(cos(x))$ we can write
```julia
function sincos(x)
    result = sin(cos(x))
    println("sin(cos(",x,")) = ",result)
    return result
end
```
If we wish to specify multiple inputs and outputs we can do so as well:
```julia
function sincos(x,y)
    result1 = sin(cos(x))
    result2 = sin(cos(y))
    println("sin(cos(",x,")) = ",result1)
    println("sin(cos(",y,")) = ",result2)
    return result1, result2
end
```
You can call a function with multiple outputs via `out = foo(input)` and access the output at index $i$ through `out[i]`. You can also write (assuming two outputs) `out1,out2 = foo(input)`.
```julia-repl
julia> x = 1; y = 1.5;
julia> res1,res2 = sincos(x,y)
sin(cos(1)) = 0.5143952585235492
sin(cos(1.5)) = 0.07067822452613834
(0.5143952585235492, 0.07067822452613834)

julia> res1
0.5143952585235492

julia> res = sincos(x,y);

julia> res[1]
0.5143952585235492
```
Julia functions do not copy the input but directly operate on the input data. This means that changing values of the input in the function body will also change this data for the function caller. Whenever you define a function which will modify the input, you should indicate this with a `!` behind the function name:
```julia
function sincos!(x)
    x .= sin.(cos.(x))
    return x
end
```
Calling this function leads to
```julia-repl
julia> x = ones(2);
julia> println("Function value is ",sincos!(x))
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
1. Evaluate both functions with the input `x = ones(2)`. How does $x$ change after calling the function? Explain this behaviour. Correct the function names accordingly.
2. Build in the function `pointer_from_objref(x)` to see how the memory changes.
3. Write a method which evaluates $\sin(\cos(x))$ and stores the result on $x$ such that $x$ is modified for the caller.
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
The reason for this behaviour is that `sincos1` changes the input as Julia functions work with call-by-reference. I.e., they do not generate a local copy of the input and instead directly work on the same memory that has been used by the caller. This memory is not reallocated due to the use of `.=`. On the other hand, `sincos2` allocates new memory, since `x = sin.(cos.(x))` will create new memory for `x` on which the values of `sin.(cos.(x))` are stored. Hence the memory of $x$ known to the caller is not modified and the original values are preserved. Not that the name `sincos2!(x)` is hence misleading and the function should be renamed to `sincos2(x)`.
2. We have
```julia
function sincos1!(x)
    println("Address input: ",pointer_from_objref(x))
    x .= sin.(cos.(x))
    println("Address output: ",pointer_from_objref(x))
    return x
end
```
and
```julia
function sincos2(x)
    println("Address input: ",pointer_from_objref(x))
    x = sin.(cos.(x))
    println("Address output: ",pointer_from_objref(x))
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

julia> println("Address caller: ",pointer_from_objref(x));
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

You might have observed that since we did not specify any datatypes, we were able to call functions using vectors and scalars. However, if we call `sincos1!(1.0)` you see that this might not always be the best idea. Some functions should only be called with a certain datatype. We can specify the datatype of input and output in the following way:
```julia
function sincos1!(x::Array{Float64,2})::Array{Float64,2}
    x .= sin.(cos.(x))
    return x
end
```
As always you can use the dot operation to evaluate an array of inputs element-wise. Define the scalar function
```julia
function sincos(x::Float64)::Float64
    return sin(cos(x))
    
end
```
and run
```julia-repl
julia> x = ones(2,3);

julia> sincos.(x)
2×3 Matrix{Float64}:
 0.514395  0.514395  0.514395
 0.514395  0.514395  0.514395
```