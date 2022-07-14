@def title = "Introduction - Macros"
@def hascode = true

@def tags = ["introduction", "macros"]

# Macros

[Macros](https://docs.julialang.org/en/v1/manual/metaprogramming/#man-macros) are a very powerful concept in Julia and we will use them throughout the next sessions.
The main idea of macros is to allow the generation of code in the final body of a program.
At its basis a macro is similar to a function, as it maps a tuple of arguments to an returned expression. 
There are two major differences:
- the expression is compiled directly and not at the first call
- the macro is executed when the code is parsed

The second feature is important as you can manipulate the code at runtime.
An easy example from the [Julia documentation on macros](https://docs.julialang.org/en/v1/manual/metaprogramming/#man-macros) is the following:

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

The nice thing about macro is, you can insert quite powerful code but you keep the readability high. 

One example is the `@macroexpand` macro, it allows you to view what a macro is doing with an argument:
```julia-repl
julia> @macroexpand @sayhello "Student n+1"
:(Main.println("Hello, ", "Student n+1"))
```

Of course you can also use the other features of Julia with macros, like multiple dispatch.

\exercise{
1. Write a macro `m` with different invocations for one argument and for two arguments. Just print `x arguments` as result. 
1. Add a version where the input is an integer and test return `an Integer`
1. What happens when you call the code `x = 1; @m x`
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

julia> @m 2
An Integer

julia> @m x y
Two arguments

julia> x = 2
2

julia> @m x
One arguments
```

}
}
