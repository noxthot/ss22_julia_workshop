# Introduction to Julia

bla

## Additional sources

If you are already familiar with another programming language it might be worth visiting [Noteworthy Differences from other Languages](https://docs.julialang.org/en/v1/manual/noteworthy-differences/) from the Julia documentation. 

# Radiation Transport with Julia

\toc

## The radiation transport equation

In this workshop, we wish to use a programming example from radiation transport. Do not worry, if you do not understand all details. Essentially everything boils down to solving  a simple matrix ordinary differential equation. And if that sounds complicated, we can also say it boils down to matrix vector multiplications that your code should execute in the end. 

So let us give a little bit of background: The radiation transport equation describes radiation particles moving through a background material. In a one-dimensional geometry, particles can travel into directions $v\in [-1,1]$ and are located at a spatial position $x\in[0,1]$. One application which requires the simulation of radiation particles is radiation therapy, where photons are shot at the tumor to destroy cancerous cells. The radiation received by the patient is stored in a matrix $\bm{\psi}\in\R^{n_x \times n_{v}}$, where $n_x$ is the number of spatial cells and $n_v$ is the number of velocities. Below you for example find a treatment planning result from radiation oncology. The treatment is chosen to destroy the lung tumor without harming important organs.

\figalt{radiation therapy}{radiationTransport.png}

## Adding packages

Let us first generate the velocity grid, which are commonly chosen to be the so-called Gauss-Legendre points. Luckily, these points are already implemented in Julia. All we need to do is to install the Julia Package `FastGaussQuadrature`. Therefore open the package manager by pressing `]`. Then, type
```
add FastGaussQuadrature
```
Now you can use all functionalities of the `FastGaussQuadrature` package whenever you start Julia. For this, generate a script `main.jl` and write
```julia:./exdot.jl
using FastGaussQuadrature
nv = 10
v, w = gausslegendre(nv)
```
You can print out your velocity grid by typing `v` in the Julia environment or by adding `println(v)`. 

## Array generation and access

Now, to generate the spatial positions on which we want to evaluate the solution we can use the built-in `range` command
```julia:./exdot.jl
nx = 101
x = collect(range(0, 1; length=nx))
```
The `range` command will generate $\operatorname{nx}$ values from 0 to 1. We use the `collect` command to store these values into a vector. Now we know how to use Julia packages and Julia built-in functions to generate our velocity and spatial grid. The next step is to set up our solution matrix $\bm{\psi}$. For this we can use the `zeros(n, m)` command, which generates a matrix with dimension $n\times m$ that has entries of zero everywhere. Hence, to create a matrix with dimension $\operatorname{nx} \times \operatorname{nv}$ type
```julia:./exdot.jl
psi = zeros(nx, nv)
```
Now to access this matrix at spatial index $j$ and velocity index $i$, we can type `psi[j, i]`. Moreover, if we do not want to access a single index, but let's say indices $5$ to $10$ in the spatial domain at all indices in velocity, we can write `psi[5:10,:]`. Note that Julia uses indices starting at index $1$, not $0$. Now, put particles in the center of the domain having all possible velocities. That is,
```julia:./exdot.jl
psi[50, :] = ones(nv)
```
A next step would be to evolve these particles in time. This is done by solving an ordinary differential equation of the form
$$  \bm{\dot \psi} = -\mathbf{D}^+\bm{\psi}\mathbf{V}^+ - \mathbf{D}^-\bm{\psi}\mathbf{V}^- + \bm{\psi}\mathbf{G}  \label{eq:ODE1} $$

## Linear algebra operations

Here $\mathbf{D}^{\pm}$ are tridiagonal matrices. To setup tridiagonal matrices you need to load the `LinearAlgebra` package. You already know how to install this package and use it in your code. Then the tridiagonal matrices are defined as
```
using LinearAlgebra
dx = 1 / (nx - 1)
DPlus = (1 / dx) * Tridiagonal(-ones(nx - 1), ones(nx), zeros(nx - 1))
DMinus = (1 / dx) * Tridiagonal(zeros(nx - 1), -ones(nx), ones(nx - 1))
```
The matrices $\mathbf{V}^{\pm}\in\mathbb{R}^{n_v\times n_v}$ are diagonal matrices, where $\mathbf{V}^-$ collects all negative velocities on the diagonal, i.e., $\mathbf{V}^- = \text{diag}(v_1,\cdots,v_{5},0,\cdots,0)$ and $\mathbf{V}^+$ collects all positive velocities, i.e., $\mathbf{V}^+ = \text{diag}(0,\cdots,0,v_{6},\cdots,v_{10})$. The command to create a diagonal matrix with diagonal $y$ is `Diagonal(y)`. You can append two vectors $a$ and $b$ by `[a; b]`. Set up $\mathbf{V}^{\pm}$. If you want to later change the number of velocity points you can work with the `ceil` and `floor` commands to determine the midpoint of your velocity vector by e.g. `Int(ceil(nv))`. This determines $\operatorname{ceil}{n_v}$ and then transforms the resuling floating point number to an integer.
```
midMinus = Int(ceil(nv / 2))
midPlus = Int(floor(nv / 2))
VMinus = Diagonal([v[1:midMinus]; zeros(midPlus)])
VPlus = Diagonal([zeros(midMinus); v[(midPlus + 1):end]])
```
Lastly, the so called scattering matrix $\mathbf{G}$ is given as 
```
G = ones(nv, nv) .* w-I
```
Now, to update your solution $\bm\psi$ from $t=0$ to $t = \Delta t$, we approximate the time derivative by $\bm{\dot \psi} \approx (\bm\psi_{\mathrm{new}}-\bm\psi)/\Delta t$. Hence, we then get
```
dt = 0.01;
psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
```
You can already check how the solution has changed by inspecting psiNew in the center. You already know how this works. If you want you can interpret the physical process that you observe. 

## Loops

Now, we do not want to know the solution at $\Delta t$, but at $t_{\mathrm{end}}=1.0$. If we just choose $\Delta t=0.4$ our approximation of the time derivative is inaccurate. Therefore, we wish to repeat the update with $\Delta t = 0.01$ fourty times. For this we can use a for loop:
```
nT = 40

for n=1:nT
    psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
    psi .= psiNew
end
```
Note that we are using `.=` insead of `=` to copy values from `psiNew` to `psi`. This is a pointwise operation and we will discuss later how this works. Now, we are interested in plotting $\phi(t_{\mathrm{end}},x) := \int_{-1}^1 \psi(t_{\mathrm{end}},x,v)\, \mathrm{d}v$. On a numerical level, we can compute this via
```
phi = zeros(nx)

for j=1:nx
    phi = sum(psi[j, :] .* w)
end
```

## Plotting

Luckily Julia can include the `PyPlot` package. Install and add it to your code. Then run
```
using PyPlot
fig, ax = subplots()
ax.plot(x, phi, "b-.", linewidth=2, label=L"\Phi", alpha=0.9)
ax.legend(loc="upper left", fontsize=15)
xlabel("x", fontsize=15)
ax.set_xlim([0,1])
ax.tick_params("both", labelsize=15) 
show()
```
The output that you should get is
\figalt{radiation therapy}{Sheet1Result.png}

What you see is the particle density $\Phi$ over the spatial domain. Congratulations, you have just computed your first radiation transport problem using Julia. If you look at your code, you will see that it looks quite messy. you can add a comment *test comment* with `# test comment`. Use the comment command to explain what you did and double check if you understood everything. Also, commonly the `using` commands are executed in the first lines of the code, so move all these commands to the top.

## Element-wise operations and data types

Let us remark a few things that we did not discuss before

**Element-wise operations**:
* We have used `.=` and `.*` commands. The *dot* denotes an element-wise operation. So assume you have two vectors $v$ and $w$. Then, `y = v .* w` will scalar multiply all elements and save them in a new vector $y$, hence $y_i = v_i \cdot w_i$.
* Assume the vector $y$ already exists and you want to tell Julia to store `v .* w` element-wise into this existing vector. Then, you can again use the *dot* command as `y .= v.*w`.
* These pointwise operations can be extended to multiple situations. Assume for example we have a matrix $\mathbf{A}\in\mathbb{R}^{n\times m}$ and a scalar $c\in\mathbb{R}$. Then `A .- c` will substract $c$ from every element in $\mathbf{A}$. Moreover if $v\in\mathbb{R}^n$, `y = v .* A` will scalar multiply $v$ to $A$, i.e., $y_{ij} = A_{ij}\cdot w_j$.
* Dot-wise operations can be used for functions as well. For example, `y = exp.(A)` will evaluate the exponential function for every element in $\mathbf{A}$, that is, $y_{ij} = e^{A_{ij}}$.

To better understand element-wise operations, see how we computed the scattering matrix $\mathbf{G}$ and see if you can write this as a for-loop. You can use the `if` command.
```
G = zeros(nv,nv);

for i=1:nv
    for j=1:nv
        G[i,j] = w[i]
        if i == j
            G[i,j] = G[i,j] - 1
        end
    end
end
```

**Data types**:
* In Julia, you do not need to specify data types. However, sometimes it becomes handy to do so. As an example, we have explicitly stated that `midMinus = Int(ceil(nv / 2))` must be an integer. This was needed, since we interpret `midMinus` as an index in an array. 
* Moreover, when defining functions (which we will do later) you can explictly state the datatypes of the input to ensure the function is used correctly.
* You can define datatypes of a variable $v$ as `v::datatype`. For example, if $v$ is an integer type `v::Integer`, if $v$ is a $64$ bit floating point number type `v::Float64`, if $v$ is an array of inegers type `v::Array{Int,1}` or for a matrix type `v::Array{Int,2}`.


@def title = "Sheet 2"
@def hascode = true
@def rss = "Refining the code by using functions"
@def rss_title = "More goodies"
@def rss_pubdate = Date(2019, 5, 1)

@def tags = ["syntax", "code", "image"]

# The Planesource benchmark with Julia

\toc

## Functions

The previously presented example is similar to the (in the radiation transport community) famous planesource benchmark, which has an analytic solution. We simply need to redefine the initial condition, which is chosen as a narrow Gaussian instead of a peak. To define this initial condition, we need to use functions. In general, it is a good idea to call functions instead of executing plain code in Julia, since Julia is inefficient if you execute your code as a top level program. Therefore, first put your entire code except for loading of packages and plotting into a function 
```
function runPlaneSource()
  ...
  return x, phi
end
```

This can look like
```
using FastGaussQuadrature
using LinearAlgebra
using PyPlot

function runPlaneSource()::Tuple{Vector{Float64}, Vector{Float64}}
    # define velocity grid according to gauss quadrature
    nv = 10
    v,w = gausslegendre(nv)
    nx = 101
    x = collect(range(0, 1; length=nx))

    # setup initial condition
    psi = zeros(nx, nv)
    psi[50, :] = ones(nv)

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

    # advance in time
    dt = 0.01
    nT = 40

    for n=1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j=1:nx
        phi[j] = sum(psi[j, :] .* w)
    end

    return x, phi
end

# run code and store final phi
x, phi = runPlaneSource()

# plot phi
fig, ax = subplots()
ax.plot(x, phi, "b-.", linewidth=2, label=L"\Phi", alpha=0.9)
ax.legend(loc="upper left", fontsize=15)
xlabel("x", fontsize=15)
ax.set_xlim([0, 1])
ax.tick_params("both", labelsize=15)
show()
```

## Input arguments

Then, write a new function for the initial condition and use it in your code. The new initial condition takes the form
$$
\psi_{jk}(t=0) = \max\left(10^{-4},\frac{1}{\sqrt{2\pi\sigma^2}}\exp\left(-\frac{(x_j-0.5)^2}{2\sigma^2}\right)\right),
$$
where $\sigma = 0.03^2$. Write an initial condition that you can call for a given $x$ and specify that $x$ is a real scalar.
```
function IC(x::Float64)::Float64
  sigma2 = 0.0009
  floor = 1e-4
  x0 = 0.0

  return max(floor, 1.0 / (sqrt(2 * pi * sigma2)) * exp(-(x - 0.5)^2 / (2.0 * sigma2)))
end
```
Then replace your initial condition from Sheet 1 by the above function call, which you need to evaluate at all spatial cells and all velocity points.
```
# setup initial condition
psi = zeros(nx, nv)

for j=1:nx
  for i=1:nv
    psi[j, i] = IC(x[j])
  end
end
```
To check your element-wise operation skills, see if you can remove one of the for loops. This can either take the form
```
psi = zeros(nx, nv)

for j=1:nx
    psi[j,:] .= IC(x[j])
end
```
or
```
psi = zeros(nx, nv)

for i=1:nv
  psi[:, i] .= IC.(x)
end
```
Now, note that we have fixed $\sigma$ insice the `IC` function. Very often, you want to use $\sigma = 0.0009$, but sometimes you want to change this sigma to test your code. See if you can rewrite your `IC` function to include this option.
```
function IC(x::Float64, sigma2::Float64=0.0009)::Float64
  floor = 1e-4
  x0 = 0.0
  return max(floor, 1.0 / (sqrt(2 * pi * sigma2)) * exp(-(x - 0.5)^2 / (2.0 * sigma2)))
end
```
In the same manner, we would like to change the number of spatial grid cells `nx` and the number of velocities `nv`. Change your `runPlaneSource` function such that it can pick varying inputs for $n_x$ and $n_v$. If no input is specified, it should pick the previously defined values.
```
using FastGaussQuadrature
using LinearAlgebra
using PyPlot

# definition of the initial condition
function IC(x::Float64, sigma2::Float64=0.0009)::Float64
    floor = 1e-4
    x0 = 0.0
    return max(floor, 1.0 / (sqrt(2 * pi * sigma2)) * exp(-(x - 0.5)^2 / (2.0 * sigma2)))
end

function runPlaneSource(nv::Int=10, nx::Int=101)::Tuple{Vector{Float64}, Vector{Float64}}
    # define velocity grid according to gauss quadrature
    v, w = gausslegendre(nv)
    x = collect(range(0, 1; length=nx))

    # setup initial condition
    psi = zeros(nx, nv)

    for j=1:nx
        psi[j, :] .= IC(x[j])
    end

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

    # advance in time
    dt = 0.01
    nT = 40

    for n=1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j=1:nx
        phi[j] = sum(psi[j, :] .* w)
    end

    return x, phi
end

# run code and store final phi
x, phi = runPlaneSource()

# plot phi
fig, ax = subplots()
ax.plot(x,phi, "b-.", linewidth=2, label=L"\Phi", alpha=0.9)
ax.legend(loc="upper left", fontsize=15)
xlabel("x", fontsize=15)
ax.set_xlim([0, 1])
ax.tick_params("both", labelsize=15)
show()
```
You can now try out different numbers of velocities and spatial cells. See how the solution changes and think about what might be the reason for this.

## Structs
You might have observed that the solution crashes if you are choosing too many spatial cells. The reason for this is that the chosen $\Delta t$ must fulfill $\Delta t \leq \Delta x$, otherwise the method is unstable. Also, you have maybe observed that a lot of parameters cannot be changed from outside the function call and you might want to add further parameters like the end time `tEnd`, the time step size `dt` or the variance of the initial condition `sigma2` to the input arguments of the function. To structure the input we can create a new object, which stores all these values, called a `struct`. A `struct` of the name *Test* which stores Floats $a=0.1$, $b=0.2$ and $c = a+b$ has the form
```
struct Test
  a::Float64
  b::Float64
  c::Float64

  Settings(a::Float64=0.1, b::Float64=0.2)
    c = a + b
    new(a, b, c)
  end
end
```
You can create this object by `testobject = Test(0.1, 0.2)` and then access elements such as $a$ with `testobject.a`. Use this to define a struct which stores all relevant information and use it as an input.
```
struct Settings
  nx::Int # number of spatial cells
  nv::Int # number of velocity points
  nt::Int # number of time steps
  dt::Float64 # time step size
  dx::Float64 # spatial grid cell size
  tEnd::Float64 # end time of simulation
  a::Float64 # start point of spatial domain
  b::Float64 # end point of spatial domain
  sigma2::Float64 # variance of initial condition

  function Settings(nx::Int=101, nv::Int=10, sigma2::Float64=0.0009)
    tEnd = 0.4
    a = -1.0;
    b = 1.0;
    dx = (b - a) / (nx - 1)
    dt = dx
    nt = Int(floor(tEnd / dt))
    new(nx, nv, nt, dt, dx, tEnd, a, b, sigma2)
  end
end
```
Go over your code and use the variables from the struct. Now it should be easy to for example change the length of the spatial domain. Use $x\in[-1,1]$. Make sure that the position of the Gaussian in your `IC` function remains in the center. We then get
```
using FastGaussQuadrature
using LinearAlgebra
using PyPlot

struct Settings
  nx::Int # number of spatial cells
  nv::Int # number of velocity points
  nt::Int # number of time steps
  dt::Float64 # time step size
  dx::Float64 # spatial grid cell size
  tEnd::Float64 # end time of simulation
  a::Float64 # start point of spatial domain
  b::Float64 # end point of spatial domain
  sigma2::Float64 # variance of initial condition

  function Settings(nx::Int=101, nv::Int=10,sigma2::Float64=0.0009)
    tEnd = 0.4
    a = -1.0;
    b = 1.0;
    dx = (b - a) / (nx - 1)
    dt = dx
    nt = Int(floor(tEnd / dt))
    new(nx, nv, nt, dt, dx, tEnd, a, b, sigma2)
  end
end

# definition of the initial condition
function IC(obj::Settings, x::Float64)
  floor = 1e-4
  return max(floor, 1.0 / (sqrt(2 * pi * obj.sigma2)) * exp(-(x - 0.5 * (obj.b - obj.a) - obj.a)^2 / (2.0 * obj.sigma2)))
end

function runPlaneSource(obj::Settings)::Tuple{Vector{Float64}, Vector{Float64}}
    nx = obj.nx
    nv = obj.nv

    # define velocity grid according to gauss quadrature
    v, w = gausslegendre(nv)
    x = collect(range(obj.a, obj.b; length=nx))

    # setup initial condition
    psi = zeros(nx, nv)

    for j=1:nx
        psi[j, :] .= IC(obj, x[j])
    end

    # create stencil matrices
    dx = obj.dx
    DPlus = (1 / dx) * Tridiagonal(-ones(nx - 1), ones(nx), zeros(nx - 1))
    DMinus = (1 / dx) * Tridiagonal(zeros(nx - 1), -ones(nx), ones(nx - 1))

    # create system matrices
    midMinus = Int(ceil(nv / 2))
    midPlus = Int(floor(nv / 2))
    VMinus = Diagonal([v[1:midMinus]; zeros(midPlus)])
    VPlus = Diagonal([zeros(midMinus); v[(midPlus + 1):end]])

    # create scattering matrix
    G = ones(nv, nv) .* w - I

    # advance in time
    dt = obj.dt
    nT = obj.nt

    for n=1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j=1:nx
        phi[j] = sum(psi[j, :] .* w)
    end

    return x, phi
end

# generate setup
settings = Settings()

# run code and store final phi
x, phi = runPlaneSource(settings)

# plot phi
fig, ax = subplots()
ax.plot(x, phi, "b-.", linewidth=2, label=L"\Phi", alpha=0.9)
ax.legend(loc="upper left", fontsize=15)
xlabel("x", fontsize=15)
ax.set_xlim([settings.a, settings.b])
ax.tick_params("both", labelsize=15)
show()
```


## Reading and writing
