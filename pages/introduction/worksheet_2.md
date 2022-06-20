@def title = "Sheet 2"
@def hascode = true
@def rss = "Refining the code by using functions"
@def rss_title = "More goodies"
@def rss_pubdate = Date(2019, 5, 1)

@def tags = ["syntax", "code", "image"]

<> A hidden code block to prevent PyPlot from opening figure
```julia:./code/worksheet_2.jl
#hideall
ioff()
```

# The Planesource benchmark with Julia

\toc

## Functions

The previously presented example is similar to the (in the radiation transport community) famous planesource benchmark, which has an analytic solution. We simply need to redefine the initial condition, which is chosen as a narrow Gaussian instead of a peak. To define this initial condition, we need to use functions. In general, it is a good idea to call functions instead of executing plain code in Julia, since Julia is inefficient if you execute your code as a top level program. Therefore, first put your entire code except for loading of packages and plotting into a function 

```julia
function runPlaneSource()
  ...
  return x, phi
end
```

This can look like

```julia:./code/worksheet_2.jl
using FastGaussQuadrature
using LinearAlgebra
using PyPlot

function runPlaneSource()::Tuple{Vector{Float64}, Vector{Float64}}
    # define velocity grid according to gauss quadrature
    nv = 10
    v, w = gausslegendre(nv)
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

    for n in 1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j in 1:nx
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
```

## Input arguments

Then, write a new function for the initial condition and use it in your code. The new initial condition takes the form
$$
\psi_{jk}(t=0) = \max\left(10^{-4},\frac{1}{\sqrt{2\pi\sigma^2}}\exp\left(-\frac{(x_j-0.5)^2}{2\sigma^2}\right)\right),
$$
where $\sigma = 0.03^2$. Write an initial condition that you can call for a given $x$ and specify that $x$ is a real scalar.

```julia:./code/worksheet_2.jl
function IC(x::Float64)::Float64
  sigma2 = 0.0009
  floor = 1e-4
  x0 = 0.0

  return max(floor, 1.0 / (sqrt(2 * pi * sigma2)) * exp(-(x - 0.5)^2 / (2.0 * sigma2)))
end
```

Then replace your initial condition from Sheet 1 by the above function call, which you need to evaluate at all spatial cells and all velocity points.

```julia
# setup initial condition
psi = zeros(nx, nv)

for j in 1:nx
  for i in 1:nv
    psi[j, i] = IC(x[j])
  end
end
```

To check your element-wise operation skills, see if you can remove one of the for loops. This can either take the form

```julia
psi = zeros(nx, nv)

for j in 1:nx
    psi[j, :] .= IC(x[j])
end
```

or

```julia
psi = zeros(nx, nv)

for i in 1:nv
  psi[:, i] .= IC.(x)
end
```

Now, note that we have fixed $\sigma$ insice the `IC` function. Very often, you want to use $\sigma = 0.0009$, but sometimes you want to change this sigma to test your code. See if you can rewrite your `IC` function to include this option.

```julia:./code/worksheet_2.jl
function IC(x::Float64, sigma2::Float64=0.0009)::Float64
  floor = 1e-4
  x0 = 0.0
  return max(floor, 1.0 / (sqrt(2 * pi * sigma2)) * exp(-(x - 0.5)^2 / (2.0 * sigma2)))
end
```

In the same manner, we would like to change the number of spatial grid cells `nx` and the number of velocities `nv`. Change your `runPlaneSource` function such that it can pick varying inputs for $n_x$ and $n_v$. If no input is specified, it should pick the previously defined values.

```julia:./code/worksheet_2.jl
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

    for j in 1:nx
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

    for n in 1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j in 1:nx
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
```

You can now try out different numbers of velocities and spatial cells. See how the solution changes and think about what might be the reason for this.

## Structs
You might have observed that the solution crashes if you are choosing too many spatial cells. The reason for this is that the chosen $\Delta t$ must fulfill $\Delta t \leq \Delta x$, otherwise the method is unstable. Also, you have maybe observed that a lot of parameters cannot be changed from outside the function call and you might want to add further parameters like the end time `tEnd`, the time step size `dt` or the variance of the initial condition `sigma2` to the input arguments of the function. To structure the input we can create a new object, which stores all these values, called a `struct`. A `struct` of the name *Test* which stores Floats $a=0.1$, $b=0.2$ and $c = a+b$ has the form

```julia:./code/worksheet_2.jl
struct Test
    a::Float64
    b::Float64
    c::Float64

    function Test(a::Float64=0.1, b::Float64=0.2)
        c = a + b
        return new(a, b, c)
    end
end
```

You can create this object by `testobject = Test(0.1, 0.2)` and then access elements such as $a$ with `testobject.a`. Use this to define a struct which stores all relevant information and use it as an input.

```julia
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

    return new(nx, nv, nt, dt, dx, tEnd, a, b, sigma2)
  end
end
```

Go over your code and use the variables from the struct. Now it should be easy to for example change the length of the spatial domain. Use $x\in[-1, 1]$. Make sure that the position of the Gaussian in your `IC` function remains in the center. We then get

```julia:./code/worksheet_2.jl
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

  function Settings(nx::Int=101, nv::Int=10, sigma2::Float64=0.0009)
    tEnd = 0.4
    a = -1.0;
    b = 1.0;
    dx = (b - a) / (nx - 1)
    dt = dx
    nt = Int(floor(tEnd / dt))

    return new(nx, nv, nt, dt, dx, tEnd, a, b, sigma2)
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

    for j in 1:nx
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

    for n in 1:nT
        psiNew = psi + dt * (-DPlus * psi * VPlus - DMinus * psi * VMinus + psi * G)
        psi .= psiNew
    end

    # store phi for plotting
    phi = zeros(nx)

    for j in 1:nx
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
```
