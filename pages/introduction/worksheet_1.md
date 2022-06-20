# Radiation Transport with Julia

\toc

## The radiation transport equation

In this workshop, we wish to use a programming example from radiation transport. Do not worry, if you do not understand all details. Essentially everything boils down to solving  a simple matrix ordinary differential equation. And if that sounds complicated, we can also say it boils down to matrix vector multiplications that your code should execute in the end. 

So let us give a little bit of background: The radiation transport equation describes radiation particles moving through a background material. In a one-dimensional geometry, particles can travel into directions $v\in [-1, 1]$ and are located at a spatial position $x\in[0, 1]$. One application which requires the simulation of radiation particles is radiation therapy, where photons are shot at the tumor to destroy cancerous cells. The radiation received by the patient is stored in a matrix $\bm{\psi}\in\R^{n_x \times n_{v}}$, where $n_x$ is the number of spatial cells and $n_v$ is the number of velocities. Below you for example find a treatment planning result from radiation oncology. The treatment is chosen to destroy the lung tumor without harming important organs.

\figalt{radiation therapy}{/assets/pages/introduction/radiationTransport.png}

## Adding packages

Let us first generate the velocity grid, which are commonly chosen to be the so-called Gauss-Legendre points. Luckily, these points are already implemented in Julia. All we need to do is to install the Julia Package `FastGaussQuadrature`. Therefore open the package manager by pressing `]`. Then, type

```julia
add FastGaussQuadrature
```

Now you can use all functionalities of the `FastGaussQuadrature` package whenever you start Julia. For this, generate a script `main.jl` and write

```julia:./code/worksheet_1.jl
using FastGaussQuadrature
nv = 10
v, w = gausslegendre(nv)
```

You can print out your velocity grid by typing `v` in the Julia environment or by adding `println(v)`. 

## Array generation and access

Now, to generate the spatial positions on which we want to evaluate the solution we can use the built-in `range` command

```julia:./code/worksheet_1.jl
nx = 101
x = collect(range(0, 1; length=nx))
```

The `range` command will generate $\operatorname{nx}$ values from 0 to 1. We use the `collect` command to store these values into a vector. Now we know how to use Julia packages and Julia built-in functions to generate our velocity and spatial grid. The next step is to set up our solution matrix $\bm{\psi}$. For this we can use the `zeros(n, m)` command, which generates a matrix with dimension $n\times m$ that has entries of zero everywhere. Hence, to create a matrix with dimension $\operatorname{nx} \times \operatorname{nv}$ type

```julia:./code/worksheet_1.jl
psi = zeros(nx, nv)
```

Now to access this matrix at spatial index $j$ and velocity index $i$, we can type `psi[j, i]`. Moreover, if we do not want to access a single index, but let's say indices $5$ to $10$ in the spatial domain at all indices in velocity, we can write `psi[5:10, :]`. Note that Julia uses indices starting at index $1$, not $0$. Now, put particles in the center of the domain having all possible velocities. That is,

```julia:./code/worksheet_1.jl
psi[50, :] = ones(nv)
```

A next step would be to evolve these particles in time. This is done by solving an ordinary differential equation of the form
$$  \bm{\dot \psi} = -\mathbf{D}^+\bm{\psi}\mathbf{V}^+ - \mathbf{D}^-\bm{\psi}\mathbf{V}^- + \bm{\psi}\mathbf{G}  \label{eq:ODE1} $$

## Linear algebra operations

Here $\mathbf{D}^{\pm}$ are tridiagonal matrices. To setup tridiagonal matrices you need to load the `LinearAlgebra` package. You already know how to install this package and use it in your code. Then the tridiagonal matrices are defined as

```julia:./code/worksheet_1.jl
using LinearAlgebra
dx = 1 / (nx - 1)
DPlus = (1 / dx) * Tridiagonal(-ones(nx - 1), ones(nx), zeros(nx - 1))
DMinus = (1 / dx) * Tridiagonal(zeros(nx - 1), -ones(nx), ones(nx - 1))
```

The matrices $\mathbf{V}^{\pm}\in\mathbb{R}^{n_v\times n_v}$ are diagonal matrices, where $\mathbf{V}^-$ collects all negative velocities on the diagonal, i.e., $\mathbf{V}^- = \text{diag}(v_1,\cdots,v_{5},0,\cdots,0)$ and $\mathbf{V}^+$ collects all positive velocities, i.e., $\mathbf{V}^+ = \text{diag}(0,\cdots,0,v_{6},\cdots,v_{10})$. The command to create a diagonal matrix with diagonal $y$ is `Diagonal(y)`. You can append two vectors $a$ and $b$ by `[a; b]`. Set up $\mathbf{V}^{\pm}$. If you want to later change the number of velocity points you can work with the `ceil` and `floor` commands to determine the midpoint of your velocity vector by e.g. `Int(ceil(nv))`. This determines $\operatorname{ceil}{n_v}$ and then transforms the resuling floating point number to an integer.

```julia:./code/worksheet_1.jl
midMinus = Int(ceil(nv / 2))
midPlus = Int(floor(nv / 2))
VMinus = Diagonal([v[1:midMinus]; zeros(midPlus)])
VPlus = Diagonal([zeros(midMinus); v[(midPlus + 1):end]])
```

Lastly, the so called scattering matrix $\mathbf{G}$ is given as 

```julia:./code/worksheet_1.jl
G = ones(nv, nv) .* w-I
```

Now, to update your solution $\bm\psi$ from $t=0$ to $t = \Delta t$, we approximate the time derivative by $\bm{\dot \psi} \approx (\bm\psi_{\mathrm{new}}-\bm\psi)/\Delta t$. Hence, we then get

```julia:./code/worksheet_1.jl
dt = 0.01;
psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
```

You can already check how the solution has changed by inspecting psiNew in the center. You already know how this works. If you want you can interpret the physical process that you observe. 

## Loops

Now, we do not want to know the solution at $\Delta t$, but at $t_{\mathrm{end}}=1.0$. If we just choose $\Delta t=0.4$ our approximation of the time derivative is inaccurate. Therefore, we wish to repeat the update with $\Delta t = 0.01$ fourty times. For this we can use a for loop:

```julia:./code/worksheet_1.jl
nT = 40

for n in 1:nT
    psiCurr = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
    psi .= psiCurr
end
```

Note that we are using `.=` insead of `=` to copy values from `psiNew` to `psi`. This is a pointwise operation and we will discuss later how this works. Now, we are interested in plotting $\phi(t_{\mathrm{end}},x) := \int_{-1}^1 \psi(t_{\mathrm{end}},x,v)\, \mathrm{d}v$. On a numerical level, we can compute this via

```julia:./code/worksheet_1.jl
phi = zeros(nx)

for j in 1:nx
    phi = sum(psi[j, :] .* w)
end
```


## Plotting

Luckily Julia can include the `PyPlot` package. Install and add it to your code. Then run

```julia:./code/worksheet_1.jl
using PyPlot
fig, ax = subplots()
ax.plot(x, phi, "b-.", linewidth=2, label=L"\Phi", alpha=0.9)
ax.legend(loc="upper left", fontsize=15)
xlabel("x", fontsize=15)
ax.set_xlim([0, 1])
ax.tick_params("both", labelsize=15) 
show()
```

The output that you should get is
\figalt{radiation therapy}{/assets/pages/introduction/Sheet1Result.png}

What you see is the particle density $\Phi$ over the spatial domain. Congratulations, you have just computed your first radiation transport problem using Julia. If you look at your code, you will see that it looks quite messy. you can add a comment *test comment* with `# test comment`. Use the comment command to explain what you did and double check if you understood everything. Also, commonly the `using` commands are executed in the first lines of the code, so move all these commands to the top.

## Element-wise operations and data types

Let us remark a few things that we did not discuss before

**Element-wise operations**:
* We have used `.=` and `.*` commands. The *dot* denotes an element-wise operation. So assume you have two vectors $v$ and $w$. Then, `y = v .* w` will scalar multiply all elements and save them in a new vector $y$, hence $y_i = v_i \cdot w_i$.
* Assume the vector $y$ already exists and you want to tell Julia to store `v .* w` element-wise into this existing vector. Then, you can again use the *dot* command as `y .= v.*w`.
* These pointwise operations can be extended to multiple situations. Assume for example we have a matrix $\mathbf{A}\in\mathbb{R}^{n\times m}$ and a scalar $c\in\mathbb{R}$. Then `A .- c` will substract $c$ from every element in $\mathbf{A}$. Moreover if $v\in\mathbb{R}^n$, `y = v .* A` will scalar multiply $v$ to $A$, i.e., $y_{ij} = A_{ij}\cdot w_j$.
* Dot-wise operations can be used for functions as well. For example, `y = exp.(A)` will evaluate the exponential function for every element in $\mathbf{A}$, that is, $y_{ij} = e^{A_{ij}}$.

To better understand element-wise operations, see how we computed the scattering matrix $\mathbf{G}$ and see if you can write this as a for-loop. You can use the `if` command.

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

**Data types**:
* In Julia, you do not need to specify data types. However, sometimes it becomes handy to do so. As an example, we have explicitly stated that `midMinus = Int(ceil(nv / 2))` must be an integer. This was needed, since we interpret `midMinus` as an index in an array. 
* Moreover, when defining functions (which we will do later) you can explictly state the datatypes of the input to ensure the function is used correctly.
* You can define datatypes of a variable $v$ as `v::datatype`. For example, if $v$ is an integer type `v::Integer`, if $v$ is a $64$ bit floating point number type `v::Float64`, if $v$ is an array of inegers type `v::Array{Int,1}` or for a matrix type `v::Array{Int,2}`.

