@def title = "Sheet 3"
@def hascode = true

@def tags = ["hpc", "worksheet"]

# HPC for radiation transport

Maybe you have noticed that the number of velocities heavily effect the accuracy of the numerical solution. In radiation therapy, one needs to use a large number of spatial cells and velocities to make sure the error that we make through the discretization is small. Quite naturally, we should therefore think about how can we use modern computer architectures to speed up convergence. Take a few moments to think about how this can be done. Also, don't forget that certain parts of the program are already using many of the discussed HPC concepts automatically. So be careful when trying to speed up your code, since it might interfer with the parallelism that Julia took care of for you.

## GPU Computing

In the following, we extend the Code from [worksheet 2](../introduction/worksheet_2.md) to GPUs. First, make sure you have CUDA installed and use it in your Julia file. Now think about what datatype your GPU can handle. In case you do not have access to a scientific (and very expensive) GPU that can handle `Float64` datatypes, make sure the code is using single precision floats. 

\collapssol{

Since we have implemented types in [worksheet 2](../introduction/worksheet_2.md), it is straightforward to change to single precision accuracy. Simply call the settings struct with
```julia
# generate setup
nx = 101
nv = 10
sigma2 = Float32(0.0009)
settings = Settings(nx,nv,sigma2)
```

}

Now, make sure that all arrays that you use in the main time loop are of type `CuArray`. Note that it might be beneficial to not directly perform all operations of your code on your GPU. Whenever you access indices, it might make more sense to work on the CPU. You can transform your data arrays to type `CuArray` once everything is set up.

To illustrate how to change to the GPU, let us look writing the initial condition. Try to run the two implementations
```julia
    T = Float32
    nx = 100
    nv = 100
    x = collect(range(obj.a, obj.b; length=nx))

    # setup initial condition
    ψ = zeros(T, nx, nv)

    for j in 1:nx
        ψ[j, :] .= IC(obj, x[j])
    end
```
as well as
```julia
    T = Float32
    nx = 100
    nv = 100
    x = collect(range(obj.a, obj.b; length=nx))

    # setup initial condition
    ψ = zeros(T, nx, nv)

    for j in 1:nx
        ψ[j, :] .= IC(obj, x[j])
    end

    ψ = CuArray(ψ)
```
Which one is faster and why? Use these observations to ensure your main time loops uses GPU arrays. Once you are confident your implementation should work, run it on you GPU. And since you expect to be super fast now, why not use $5000$ spatial points and $1000$ velocity points? See how much the solution changes.

\collapssol{

One possible GPU implementation looks the following. Note that we abandon sparse matrices. To use sparse matrices on the GPU, we can employ the `CuSparseMatrixCSC` in the `CuSparse` package.

```julia:./code/worksheet_3.jl
using FastGaussQuadrature
using LaTeXStrings
using LinearAlgebra
using Plots; gr()
using CUDA

struct Settings{T<:AbstractFloat}
  nx::Int # number of spatial cells
  nv::Int # number of velocity points
  nt::Int # number of time steps
  Δt::T # time step size
  Δx::T # spatial grid cell size
  tEnd::T # end time of simulation
  a::T # start point of spatial domain
  b::T # end point of spatial domain
  sigma2::T # variance of initial condition

  function Settings(nx::Int=101, nv::Int=10, sigma2::T=0.0009) where {T<:AbstractFloat}
    tEnd = 0.4
    a = -1.0;
    b = 1.0;
    Δx = (b - a) / (nx - 1)
    Δt = Δx
    nt = Int(floor(tEnd / Δt))

    return new{T}(nx, nv, nt, Δt, Δx, tEnd, a, b, sigma2)
  end
end

# definition of the initial condition
function IC(obj::Settings, x::T) where T<:Real
  floor = T(1e-4)
  return max(floor, 1.0 / (sqrt(2 * pi * obj.sigma2)) * exp(-(x - 0.5 * (obj.b - obj.a) - obj.a)^2 / (2.0 * obj.sigma2)))
end

function runPlaneSource(obj::Settings{T}) where {T}
    nx = obj.nx
    nv = obj.nv

    # define velocity grid according to gauss quadrature
    v, w = convert.(Vector{T}, gausslegendre(nv))
    x = collect(range(obj.a, obj.b; length=nx))

    # setup initial condition
    ψ = zeros(T, nx, nv)

    for j in 1:nx
        ψ[j, :] .= IC(obj, x[j])
    end

    ψ = CuArray(ψ)

    # create stencil matrices
    Δx = obj.Δx
    D⁺ = CuArray((1 / Δx) * Tridiagonal(-ones(T, nx - 1), ones(T, nx), zeros(T, nx - 1)))
    D⁻ = CuArray((1 / Δx) * Tridiagonal(zeros(T, nx - 1), -ones(T, nx), ones(T, nx - 1)))


    # create system matrices
    midMinus = Int(ceil(nv / 2))
    midPlus = Int(floor(nv / 2))
    V⁻ = CuArray(Diagonal([v[1:midMinus]; zeros(midPlus)]))
    V⁺ = CuArray(Diagonal([zeros(midMinus); v[(midPlus + 1):end]]))


    # create scattering matrix
    w = CuArray(w);
    G = CUDA.ones(T, nv, nv) .* w - I

    # advance in time
    Δt = obj.Δt
    nT = obj.nt

    for n in 1:nT
        ψ_new = ψ + Δt * (-D⁺ * ψ * V⁺ - D⁻ * ψ * V⁻ + ψ * G)
        ψ .= ψ_new
    end

    # store Φ for plotting
    Φ = zeros(T, nx)

    for j in 1:nx
        Φ[j] = sum(ψ[j, :] .* w)
    end

    return x, Φ
end

# generate setup
nx = 1001
nv = 1000
sigma2 = Float32(0.0009)
settings = Settings(nx,nv,sigma2)

# run code and store final Φ
x, Φ = runPlaneSource(settings)

# plot Φ
plot(x, Φ, labels=L"\Phi")
xlabel!("x")
```
}