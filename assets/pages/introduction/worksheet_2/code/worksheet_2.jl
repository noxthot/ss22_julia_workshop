# This file was generated, do not modify it. # hide
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