# This file was generated, do not modify it. # hide
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

# plot phi
plot(x, phi, labels=L"\Phi")
xlabel!("x")