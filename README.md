# Use

We use [Franklin.jl](https://franklinjl.org) to generate the lecture material. To do so, simply activate the environment, use Franklin and run the local server:
```
activate .
using Franklin
serve()
```
or run `julia start.jl` for the main directory.

To update the material edit the `md` files in `pages/`. The main landing page can be found in `index.md`.

To add a new subpage, create a new `md` file and save it at the appropriate place within the subdirectory structure `pages/`. Additionally the file needs to be added to the navigation bar which can be achieved by updating `_layout/pgwrap.html`.

Have a look at the documentation of [Franklin.jl](https://franklinjl.org) for more information (use the search box to easily find what you are looking for). Additionally you may consult the [demos](https://franklinjl.org/demos/) page.
