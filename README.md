# Use

We use [Franklin.jl](https://franklinjl.org) to generate the lecture material. To do so, simply activate the environment (in the subfolder `SS22_julia_workshop`), use Franklin and run the local server:
```
activate .
using Franklin
serve()
```
or run `julia start.jl` for the main directory.

To update the material edit the `md` files in `SS22_julia_workshop/pages/`. The main landing page can be found in `SS22_julia_workshop/index.md`.

To add a new subpage, create a new `md` file and save it at the appropriate place within the subdirectory structure `SS22_julia_workshop/pages/`. Additionally the file needs to be added to the navigation bar which can be achieved by updating `SS22_julia_workshop/_layout/pgwrap.html`.

Have a look at the documentation of [Franklin.jl](https://franklinjl.org) for more information (use the search box to easily find what you are looking for). Additionally you may consult the [demos](https://franklinjl.org/demos/) page.
