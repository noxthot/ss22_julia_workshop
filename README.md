# Use

I suggest we directly use the Julia version for the document aka. the [Documenter.jl](https://juliadocs.github.io/Documenter.jl/stable/man/guide/) package. 

Haven't used it before but that is true for Sphinx and it has similar features. 

You can use it for stand alone documentation, everything is in `\docs` and with the markdown in `\docs\src`.

To build it run 
```julia
julia make.jl
```
you will get a build folder with the html or pdf for LaTeX (not tried by now).
