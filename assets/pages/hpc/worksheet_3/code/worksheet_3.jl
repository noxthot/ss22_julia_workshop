# This file was generated, do not modify it. # hide
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
    a = -1.0
    b = 1.0
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
    w = CuArray(w)
    G = CUDA.ones(T, nv, nv) .* w - I

    # advance in time
    Δt = obj.Δt
    nT = obj.nt

    for n in 1:nT
        ψ .= ψ + Δt * (-D⁺ * ψ * V⁺ - D⁻ * ψ * V⁻ + ψ * G)
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
settings = Settings(nx, nv, sigma2)

# run code and store final Φ
x, Φ = runPlaneSource(settings)

# plot Φ
plot(x, Φ, labels=L"\Phi")
xlabel!("x")