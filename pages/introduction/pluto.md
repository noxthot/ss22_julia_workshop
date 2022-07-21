@def title = "Pluto"
@def hascode = true

@def tags = ["introduction", "pluto"]

# Pluto Notebook

With [`Pluto.jl`](https://github.com/fonsp/Pluto.jl) Julia provides notebooks that are simple, lightweight and reactive. The notebooks can be shared easily since they also keep track of the used packages and their versions. By using [`PlutoUI.jl`](https://github.com/JuliaPluto/PlutoUI.jl) one can add UI elements like sliders, textfields and so on. It also has markdown support and it is possible to create a nice looking HTML export.

To get started, simply add `Pluto` and start the Pluto server with:
```julia-repl
julia> using Pluto
Pluto.run()

julia> Pluto.run()
[ Info: Loading...
┌ Info: 
└ Opening http://localhost:1234/?secret=J6cPXwBB in your default browser... ~ have fun!
```

In the end, Pluto should automatically get opened in your default browser.

## Pluto demo
Check our [sample notebook](/notebooks/html/pluto_example.jl) and please note that UI elements are only working when the code is run within Pluto. On the top right you will find instructions on how to run the code on your machine.