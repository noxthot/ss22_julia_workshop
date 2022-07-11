@def title = "Package Manager"
@def hascode = true

@def tags = ["introduction"]

# Package manager

We have already worked a little bit with the Julia [package manager](https://docs.julialang.org/en/v1/stdlib/Pkg/). In the following, we will discuss this feature in more detail. You already know how to open the package manager: simply press `]`. Now, in order to, for example, add the [FastGaussQuadrature](https://juliaapproximation.github.io/FastGaussQuadrature.jl/stable/) package type 
```julia-repl
(@v1.7) pkg> add FastGaussQuadrature
```
Now, every time you open Julia, you can type
```julia-repl
julia> using FastGaussQuadrature
```
which in this case adds functionalities to numerically compute integrals to your session. Note that the specific details of this package are not important at this point and we will revisit this package in our work sheets. In case you wish to remove this package you can open the package manager and type
```julia-repl
(@v1.7) pkg> rm FastGaussQuadrature
```
If you now want to install a specific version of a package you can add `@<versionnumber>` behind the package name. As an example, to install `FastGaussQuadrature` at version $0.4.8$ type
```julia-repl
(@v1.7) pkg> add FastGaussQuadrature@0.4.8
```
Moreover, you can update all packages that you have added by typing
```julia-repl
(@v1.7) pkg> update
```
or just a specific package (for example FastGaussQuadrature) by typing
```julia-repl
(@v1.7) pkg> update FastGaussQuadrature
```
To get a list of all installed packages you can type
```julia-repl
(@v1.7) pkg> status
```
It is good practice to add packages only for certain projects to prevent conflicting packages. This can be done by creating a new package environment. Here we create an environment called `example`:
```julia-repl
(@v1.7) pkg> activate example
```
If you check this new environment with the `status` command you will see that you have a clean package environment. You can return to the default environment by typing `activate`. Type `activate .`, if you want to create an environment that is identified with the project folder you are working on. Whenever someone uses your project folder, this person can enter the same environment by typing `activate .` and install all needed packages with the used versions by typing `instantiate`. If you do not want to enter the julia environment, simply type
```shell
julia --project=. main.jl
```

\exercise{
    Let us practice the learned concepts a little bit.
1. Create a new project called `SummerSchool`. To setup the project, create a new folder and navigate to it using the REPL. 
2. Make sure you can use the `Plots` package in the new project environment.
3. Check if you can use this package. You can for example plot the connection between two points $(1,1)$ and $(2,3)$ by `plot([1; 2],[2; 3])`.
4. Check if the `Plots` package is available in the standard environment.
5. Install the latest version of the `LinearAlgbra` package in the standard environment and version $1.5$ in your project environment.

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

(@v1.7) pkg> add Plots

(@v1.7) pkg> activate .

(SummerSchool) pkg> add Plots@1.30.1
```
}
}