# Use

I suggest we directly use the Julia version for the document aka. the [Documenter.jl](https://juliadocs.github.io/Documenter.jl/stable/man/guide/) package. 

Haven't used it before but that is true for Sphinx and it has similar features. 

You can use it for stand alone documentation, everything is in `\docs` and with the markdown in `\docs\src`.

To build it run 
```julia
julia make.jl
```
you will get a build folder with the html or pdf for LaTeX (not tried by now).

# Use Variant 2

We use [Franklin.jl](https://franklinjl.org) to generate the lecture material. To do so, simply activate the environment (in the subfolder `SS22_julia_workshop`), use Franklin and run the local server:
```
activate .
useing Franklin
serve()
```

To update the material edit the `md` files in `SS22_julia_workshop/pages/`. The main landing page can be found in `SS22_julia_workshop/index.md`.

To add a new subpage, create a new `md` file and save it at the appropriate place within the subdirectory structure `SS22_julia_workshop/pages/`. Additionally the file needs to be added to the navigation bar which can be achieved by updating `SS22_julia_workshop/_layout/pgwrap.html`.

Have a look at the documentation of [Franklin.jl](https://franklinjl.org) for more information (use the search box to easily find what you are looking for). Additionally you may consult the [demos](https://franklinjl.org/demos/) page.
