@def title = "Sheet 1"
@def hascode = true

@def tags = ["introduction", "worksheet"]

# Radiation Transport with Julia

\toc

## The radiation transport equation

In this workshop, we wish to use a programming example from radiation transport. Do not worry, if you do not understand all details. Essentially everything boils down to solving  a simple matrix ordinary differential equation. And if that sounds complicated, we can also say it boils down to matrix vector multiplications that your code should execute in the end. 

So let us give a little bit of background: The radiation transport equation describes radiation particles moving through a background material. In a one-dimensional geometry, particles can travel into directions $v\in [-1, 1]$ and are located at a spatial position $x\in[0, 1]$. One application which requires the simulation of radiation particles is radiation therapy, where photons are shot at a tumor to destroy cancerous cells. The radiation received by the patient is stored in a matrix $\bm{\psi}\in\R^{n_x \times n_{v}}$, where $n_x$ is the number of spatial cells and $n_v$ is the number of velocities. Below you find an example of a treatment planning result from radiation oncology. The treatment is chosen to destroy the lung tumor without harming important organs.

\figalt{radiation therapy}{/assets/pages/introduction/radiationTransport.png}

## Adding packages

Let us first generate the velocity grid, which are commonly chosen to be the so-called Gauss-Legendre points. Luckily, these points are already implemented in Julia. All we need to do is to install the Julia Package `FastGaussQuadrature`. The $\operatorname{nv} = 10$ points can be accessed and stored in a vector $v$ by calling `v, w = gausslegendre(nv)`. Note that $v$ contains the Gauss-Legendre points and $w$ contains the so-called quadrature weights used to compute integrals. Recall that it can be advantageous to create a new environment for this project. 

\collapssol{
First, we need to open a new project and install the `FastGaussQuadrature` package:

```julia-repl
shell> mkdir LinearTransportSolver

shell> cd LinearTransportSolver
/home/jonas/Projects/LinearTransportSolver

(SummerSchool) pkg> activate .
  Activating new project at `~/Projects/LinearTransportSolver`

(LinearTransportSolver) pkg> add FastGaussQuadrature
```

Now you can use all functionalities of the `FastGaussQuadrature` package whenever you start Julia. For this, generate a script `main.jl` and write

```julia:./code/worksheet_1.jl
using FastGaussQuadrature
nv = 10
v, w = gausslegendre(nv)
```
You can print out your velocity grid by typing `v` in the Julia environment or by adding `println(v)`. 

$\,$

}


## Array generation and access

Now, to generate the spatial positions on which we want to evaluate the solution we can use the `range` command. Build a spatial grid $x\in\mathbb{R}^{n_x}$, with $n_x = 101$, where $x$ contains the spatial positions from $x_0 = 0$ to $x_1 = 1$.

\collapssol{

```julia:./code/worksheet_1.jl
nx = 101
x = collect(range(0, 1; length=nx))
```

The `range` command will generate $\operatorname{nx}$ values from $0$ to $1$. We use the `collect` command to convert the returned object into a vector.

 }

The next step is to set up our solution matrix $\bm{\psi}$. The matrix should have dimension $\operatorname{nx}\times\operatorname{nv}$. Initially, the solution is zero except for $\psi_{50,k}=1$ for all $k$. Compute the described matrix.

\collapssol{
To generate a zero matrix of dimension $n\times m$ we can use the `zeros(n, m)` command. Hence, to create a matrix with dimension $\operatorname{nx} \times \operatorname{nv}$ type

```julia:./code/worksheet_1.jl
ψ = zeros(nx, nv)
```

Now to access this matrix at spatial index $j$ and velocity index $i$, we can type `ψ[j, i]`. Moreover, if we do not want to access a single index, but let's say indices $5$ to $10$ in the spatial domain at all indices in velocity, we can write `ψ[5:10, :]`. Note that Julia uses indices starting at index $1$, not $0$. Now, put particles in the center of the domain having all possible velocities. That is,

```julia:./code/worksheet_1.jl
ψ[50, :] = ones(nv)
```

$\,$

}

## Linear algebra operations
A next step would be to evolve these particles in time. This is done by solving an ordinary differential equation of the form
$$  \bm{\dot \psi} = -\mathbf{D}^+\bm{\psi}\mathbf{V}^+ - \mathbf{D}^-\bm{\psi}\mathbf{V}^- + \bm{\psi}\mathbf{G}  \label{eq:ODE1} $$

Here $\mathbf{D}^{\pm}$ are tridiagonal matrices of the form
$$
\mathbf{D}^- = \frac{1}{\Delta x}\begin{pmatrix}
    -1 & 1 &    &      &   \\
      & -1       & 1   &      &    \\
      &         & -1         & \ddots    &     \\
      &         &           &     -1      & 1   \\
      &         &           &           & -1
  \end{pmatrix}\;,
$$
and 
$$
\mathbf{D}^+ = \frac{1}{\Delta x}\begin{pmatrix}
    1 &  &    &      &   \\
    -1  & 1       &    &      &    \\
      &  -1       & 1         &     &     \\
      &         &    \ddots       &     1      &    \\
      &         &           &      -1     & 1
  \end{pmatrix}\;,
$$
where $\Delta x = \frac{1}{n_x - 1}$. Set up these two matrices in your code.

\collapssol{
To setup tridiagonal matrices you need to load the `LinearAlgebra` package:
```julia-repl
(LinearTransportSolver) pkg> add LinearAlgebra
```

Then, the tridiagonal matrices can be implemented as

```julia:./code/worksheet_1.jl
using LinearAlgebra
Δx = 1 / (nx - 1)
DPlus = (1 / Δx) * Tridiagonal(-ones(nx - 1), ones(nx), zeros(nx - 1))
DMinus = (1 / Δx) * Tridiagonal(zeros(nx - 1), -ones(nx), ones(nx - 1))
```

$\,$

}

The matrices $\mathbf{V}^{\pm}\in\mathbb{R}^{n_v\times n_v}$ are diagonal matrices, where $\mathbf{V}^-$ collects all negative velocities on the diagonal, i.e., $\mathbf{V}^- = \text{diag}(v_1,\cdots,v_{5},0,\cdots,0)$ and $\mathbf{V}^+$ collects all positive velocities, i.e., $\mathbf{V}^+ = \text{diag}(0,\cdots,0,v_{6},\cdots,v_{10})$. Implement these two matrices. To write your code for general $\operatorname{nv}$, use the `ceil` and `floor` commands.

\collapssol{
The command to create a diagonal matrix with diagonal $y$ is `Diagonal(y)`. You can append two vectors $a$ and $b$ by `[a; b]`. We can use the `ceil` and `floor` commands to determine the midpoint of your velocity vector by e.g. `Int(ceil(nv))`. This determines $\operatorname{ceil}{n_v}$ and then transforms the resuling floating point number to an integer.

```julia:./code/worksheet_1.jl
midMinus = Int(ceil(nv / 2))
midPlus = Int(floor(nv / 2))
VMinus = Diagonal([v[1:midMinus]; zeros(midPlus)])
VPlus = Diagonal([zeros(midMinus); v[(midPlus + 1):end]])
```

Recall that in Julia, you do not need to specify data types. However, sometimes it becomes handy or even necessary to do so. Here, we have explicitly stated that `midMinus = Int(ceil(nv / 2))` must be an integer. This was needed, since we interpret `midMinus` as an index in an array. 
}

Lastly, the so called scattering matrix $\mathbf{G}$ is given as 

$$
\mathbf{G} = \begin{pmatrix}
    w_1 & w_1 &  \cdots  & w_1  \\
    w_2  & w_2 & \cdots   & w_2   \\
    \vdots  &   \vdots      &           &  \vdots  \\
    w_{\operatorname{nv}}  &   w_{\operatorname{nv}}      &   \cdots & w_{\operatorname{nv}}
  \end{pmatrix} - 
  \begin{pmatrix}
    1 &  &  &      &   \\
      & 1       &    &     &    \\
      &         & \ddots         &     &     \\
      &         &           &       1    &    \\
      &         &           &           & 1
  \end{pmatrix}
  \;.
$$
Implement this matrix. You can try to not use `for` loops to test your element-wise operation skills.

\collapssol{

```julia:./code/worksheet_1.jl
G = ones(nv, nv) .* w - I
```

}


Now, to update your solution $\bm\psi$ from $t=0$ to $t = \Delta t$, we approximate the time derivative by $\bm{\dot \psi} \approx (\bm\psi_{\mathrm{new}}-\bm\psi)/\Delta t$. Hence, we then get

$$  \bm{\psi}_{new} = \bm{\psi} -\Delta t\mathbf{D}^+\bm{\psi}\mathbf{V}^+ - \Delta t\mathbf{D}^-\bm{\psi}\mathbf{V}^- + \Delta t\bm{\psi}\mathbf{G}  \label{eq:ODE2} $$

Implement the above formular using a time step size $\Delta t = 0.01$. Try to use dot operations whenever possible. You can already check how the solution has changed by inspecting `ψ_new` in the center. You already know how this works. If you want you can interpret the physical process that you observe. 

\collapssol{

We can use dot operations for additions and scalar multiplications. A possible implementation reads
```julia:./code/worksheet_1.jl
Δt = 0.01;
ψ_new = ψ .+ Δt .* (-DPlus * ψ * VPlus .- DMinus * ψ * VMinus .+ ψ * G)
```
To check the change of $\psi$ after a single time step around the center of the spatial domain you can for example type
 ```julia-repl
julia> midIndex = Int(floor(nx / 2));

julia> ψ_new[(midIndex - 1):(midIndex + 1), :]
```

}

## Loops

Now, we do not want to know the solution at $\Delta t$, but at $t_{\mathrm{end}}=1.0$. If we just choose $\Delta t=1.0$ our approximation of the time derivative is inaccurate. Therefore, we wish to repeat the update with $\Delta t = 0.01$ fourty times. Use a loop to implement the repeated updates

\collapssol{

```julia:./code/worksheet_1.jl
nT = 40
ψ_new = zeros(size(ψ));

for n in 1:nT
    ψ_new .= ψ .+ Δt .* (-DPlus * ψ * VPlus .- DMinus * ψ * VMinus .+ ψ * G)
    ψ .= ψ_new
end
```
Note that we are using `.=` insead of `=` to copy values from `ψ_new` to `ψ` and to write new values on `ψ_new`. This ensures that no additional memory is allocated in very iteration step.

}

 Now, we are interested in plotting $\phi(t_{\mathrm{end}},x) := \int_{-1}^1 \psi(t_{\mathrm{end}},x,v)\, \mathrm{d}v$. On a numerical level, we can compute this via

```julia:./code/worksheet_1.jl
Φ = zeros(nx)

for j in 1:nx
    Φ[j] = sum(ψ[j, :] .* w)
end
```

## Plotting

Luckily, Julia can include the `Plots` package. Install and add it to your code. Then run

```julia:./code/worksheet_1.jl
using LaTeXStrings
using Plots; gr()

plot(x, Φ, labels=L"\Phi")
xlabel!("x")
savefig(joinpath(@OUTPUT, "worksheet_1.png")) # hide
```

The output that you should get is
\figalt{radiation therapy}{/assets/pages/introduction/worksheet_1/code/output/worksheet_1.png}

What you see is the particle density $\Phi$ over the spatial domain. Congratulations, you have just computed your first radiation transport problem using Julia. If you look at your code, you will see that it looks quite messy. you can add a comment *test comment* with `# test comment`. Use the comment command to explain what you did and double check if you understood everything. Also, commonly the `using` commands are executed in the first lines of the code, so move all these commands to the top.

## Element-wise operations

To better understand element-wise operations, see how we computed the scattering matrix $\mathbf{G}$ and see if you can write this in terms of for-loops. You can use the `if` command.

\collapssol{

Recall the main concepts of element-wise operations that have also been previously applied:

**Element-wise operations**:
* We have used `.=` and `.*` commands. The *dot* denotes an element-wise operation. So assume you have two vectors $v$ and $w$. Then, `y = v .* w` will scalar multiply all elements and save them in a new vector $y$, hence $y_i = v_i \cdot w_i$.
* Assume the vector $y$ already exists and you want to tell Julia to store `v .* w` element-wise into this existing vector. Then, you can again use the *dot* command as `y .= v.*w`.
* These pointwise operations can be extended to multiple situations. Assume for example we have a matrix $\mathbf{A}\in\mathbb{R}^{n\times m}$ and a scalar $c\in\mathbb{R}$. Then `A .- c` will substract $c$ from every element in $\mathbf{A}$. Moreover if $v\in\mathbb{R}^n$, `y = v .* A` will scalar multiply $v$ to $A$, i.e., $y_{ij} = A_{ij}\cdot w_j$.
* Dot-wise operations can be used for functions as well. For example, `y = exp.(A)` will evaluate the exponential function for every element in $\mathbf{A}$, that is, $y_{ij} = e^{A_{ij}}$.

Then, the compact element-wise operation formulation of the scattering matrix becomes

```julia:./code/worksheet_1.jl
G = zeros(nv, nv);

for i in 1:nv
    for j in 1:nv
        G[i, j] = w[i]
        if i == j
            G[i, j] = G[i, j] - 1
        end
    end
end
```

}

## Full sample solution
```julia:./code/worksheet_1.jl
using FastGaussQuadrature
using LaTeXStrings
using LinearAlgebra
using Plots; gr()

# define velocity grid according to gauss quadrature
nv = 10
v, w = gausslegendre(nv)
nx = 101
x = collect(range(0, 1; length=nx))

# setup initial condition
ψ = zeros(nx, nv)
ψ[50, :] = ones(nv)

# create stencil matrices
dx = 1 / (nx - 1)
DPlus = (1 / dx) * Tridiagonal(-ones(nx - 1), ones(nx), zeros(nx - 1))
DMinus = (1 / dx) * Tridiagonal(zeros(nx - 1), -ones(nx), ones(nx - 1))

# create system matrices
midMinus = Int(ceil(nv / 2))
midPlus = Int(floor(nv / 2))
VMinus = Diagonal([v[1:midMinus]; zeros(midPlus)])
VPlus = Diagonal([zeros(midMinus); v[(midPlus + 1):end]])

# create scattering matrix
G = ones(nv, nv) .* w - I

# allocate memory
ψ_new = zeros(size(ψ))

# advance in time
Δt = 0.01
nT = 40

for n in 1:nT
    ψ_new .= ψ .+ Δt .* (-DPlus * ψ * VPlus .- DMinus * ψ * VMinus + ψ * G)
    ψ .= ψ_new
end

# store phi for plotting
Φ = zeros(nx)

for j in 1:nx
    Φ[j] = sum(ψ[j, :] .* w)
end

# plot phi
plot(x, Φ, labels=L"\Phi")
xlabel!("x")
```
