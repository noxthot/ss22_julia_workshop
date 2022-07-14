@def title = "Introduction - Macros"
@def hascode = true

@def tags = ["introduction", "macros"]

# Macros

[Macros](https://docs.julialang.org/en/v1/manual/metaprogramming/#man-macros) are a very powerful concept in Julia and we will use them throughout the next sessions.
The main idea of macros is to allow the generation of code in the final body of a program.
At its basis a macro is similar to a function, as it maps a tuple of arguments to an returned expression. 
Therefore, in order to distinguish macros in the code, Julia reserves the `@` symbol as the first character for macro definitions. 
Apart from that convention, there are two major differences between macros and functions.
The macros:
1. is compiled directly and not at the first call,
1. is executed when the code is parsed.

The second feature is the important one, as you can manipulate the code at runtime.
The nice thing about macros is, you can insert quite powerful code by still keeping the readability high. 
Later on We will see how this works, but let us keep it simple to begin with.  

An easy example from the [Julia documentation on macros](https://docs.julialang.org/en/v1/manual/metaprogramming/#man-macros) is:
```julia-repl
julia> macro sayhello(name)
          return :( println("Hello, ", $name) )
       end
@sayhello (macro with 1 method)

julia> @sayhello("student n")
Hello, student n

julia> @sayhello "student n+1"
Hello, student n+1
```
One thing to ote here is, that in REPL the macro is executed immediately and we see the result right away. 

It would not be Julia if there was not a macro that can be used to view what a macro is actually doing with an argument. 
This is the `@macroexpand` macro:
```julia-repl
julia> @macroexpand @sayhello "Student n+1"
:(Main.println("Hello, ", "Student n+1"))
```

Of course you can also use the other features of Julia with macros, like multiple dispatch, which is something for the exercise. 

\exercise{
Program the following tasks.
1. Write a macro `m` with different invocations for one argument and for two arguments (just print `x arguments` as return value). 
1. Add a version where the input is an integer and test with `@m 1`
1. What happens when you run the code 
```julia
x = 1
@m x
```

\solution{
```julia-repl
julia> macro m(x)
           println("One arguments")
       end
@m (macro with 1 method)

julia> macro m(x,y)
           println("Two arguments")
       end
@m (macro with 2 methods)

julia> macro m(::Int)
           println("An Integer")
       end
@m (macro with 3 methods)

julia> @m 1
An Integer

julia> @m x y
Two arguments

julia> x = 1
1

julia> @m x
One arguments
```
}
}
