@def title = "Package Manager"
@def hascode = true

@def tags = ["introduction"]

# Package manager

We have already seen the Julia [package manager](https://docs.julialang.org/en/v1/stdlib/Pkg/). In the following, we will discuss this feature in more detail. We already know how to open the package manager: Simply press `]`. Now, in order to, for example, add the [FastGaussQuadrature](https://juliaapproximation.github.io/FastGaussQuadrature.jl/stable/) package type 
```julia-repl
(@v1.7) pkg> add FastGaussQuadrature
```
From now on, every time we open Julia, we can type
```julia-repl
julia> using FastGaussQuadrature
```
which in this case adds functionalities to numerically compute integrals to our session. Note that the specific details of this package are not important at this point and we will revisit this package in our work sheets. In case we wish to remove this package again we can open the package manager and type
```julia-repl
(@v1.7) pkg> rm FastGaussQuadrature
```
If we now want to install a specific version of a package we can add `@<versionnumber>` behind the package name. As an example, to install `FastGaussQuadrature` at version $0.4.8$ we type
```julia-repl
(@v1.7) pkg> add FastGaussQuadrature@0.4.8
```
Moreover, we can update all packages that we have added by typing
```julia-repl
(@v1.7) pkg> update
```
or just a specific package (for example FastGaussQuadrature) by typing
```julia-repl
(@v1.7) pkg> update FastGaussQuadrature
```
To get a list of all installed packages we can type
```julia-repl
(@v1.7) pkg> status
```
It is good practice to add packages only for certain projects to prevent conflicting packages, see [dependency hell](https://en.wikipedia.org/wiki/Dependency_hell). This can be done by creating a new package environment. Here we create an environment called `example`:
```julia-repl
(@v1.7) pkg> activate example
```
If we check this new environment with the `status` command we will see that we have a clean package environment. We can return to the default environment by typing `activate`. We type `activate .`, if we want to create an environment that is identified with the project folder we are currently working in. Whenever someone uses this project folder, this person can enter the same environment by typing `activate .` and install all needed packages with the used versions by typing `instantiate`. If we do not want to start the REPL we can still include the environment by simply typing
```shell
julia --project=. main.jl
```

\exercise{
    Let us practice the learned concepts a little bit.
1. Create a new project called `SummerSchool`. To setup the project, create a new folder and navigate to it using the REPL. 
2. Make sure you can use the `Plots` package in the new project environment by loading it with `using Plots`.
3. Now you can for example plot the connection between two points $(1,1)$ and $(2,3)$ by `plot([1; 2], [2; 3])`.
4. Check if the `Plots` package is available in the standard environment.
5. Install the latest version of the `MultivariateStats` package in the standard environment and version `0.8.0` in your project environment.

\solution{
```julia-repl
shell> mkdir SummerSchool

shell> cd SummerSchool
/home/jonas/Projects/SummerSchool

(@v1.7) pkg> activate .
  Activating new project at `~/Projects/SummerSchool`

(SummerSchool) pkg> add Plots

julia> using Plots

julia> plot([1; 2],[2; 3])

(SummerSchool) pkg> activate
  Activating project at `~/.julia/environments/v1.7`

julia> using Plots
 │ Package Plots not found, but a package named Plots is available from a registry. 
 │ Install package?
 │   (@v1.7) pkg> add Plots 
 └ (y/n) [y]: 

(@v1.7) pkg> add MultivariateStats

(@v1.7) pkg> activate .

(SummerSchool) pkg> add MultivariateStats@0.8.0
```
}
}