using Plots
using Revise

function outer(vec1::Vector, vec2::Vector)
    return vec1 * transpose(vec2)
end

function plot_image(M::Matrix)
    Ms = M ./ maximum(M)
    heatmap(Ms, legend=false, axis=nothing, zlims=[0, 1])
end

x = Vector{Float64}(1:10)
y = Vector{Float64}(1:12)
xy = outer(x, y)

plot_image(xy)

# rank 1 matrix
plot_image(outer(rand(10), rand(20)))

# rank 2 matrix
plot_image(outer(rand(10), rand(20)) + outer(rand(10), rand(20)))

# rank n matrix
n = 10
plot_image(sum([outer(rand(10), rand(20)) for _ in 1:20]))

# initialize a random rank 1 matrix
M = outer(rand(1000), rand(20))
noise_M = M .+ 0.01 .* randn.()

plot_image(M)
plot_image(noise_M)

scatter(noise_M[:, 1], noise_M[:, 2], label="noisy", alpha=0.5, leg=:topleft)
scatter!(M[:, 1], M[:, 2], label="rank-1", alpha=0.5)