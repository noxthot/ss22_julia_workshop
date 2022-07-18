@def title = "Unsupervised Learning"
@def hascode = true

@def tags = ["Data Science", "unsupervised learning"]

# Unsupervised Learning

\toc

The term *unsupervised learning* subsumes all kinds of algorithms that are used to gain insights from such an unlabeled data set.
Typically these algorithms fall into three main categories:
- **Association rules**: to discover relationships between different variables (e.g. for recommender systems: *customers who bought X also bought Y*)
- **Clustering**: for grouping data based on their similarities (e.g. grouping news articles about similar topics)
- **Dimensionality reduction**: for transforming data from a high-dimensional to a low-dimensional space (e.g. used for denoising images)

In this section we will quickly glimpse into clustering with an algorithm called *K means*, and into dimensionality reduction by applying PCA (*Principal Component Analysis*) and UMAP (*Uniform Manifold Approximation and Projection*).

Let us imagine that we only have a folder with 10.000 images of various hand written digits without any label and we would like to sort them into ten buckets: One bucket where we only have images of 0s, one bucket where we only have images of 1s and so on. Technically speaking, we are expecting to see ten different digits (*categories*) and within each category, the similarity between the images is expected to be *high*. How are we able to tackle this problem? One possibility is to sort them by hand. A less time consuming approach could be to apply some unsupervised learning algorithms.

Here we will work with MNIST's flattened test data set `X_test` which we prepared in the previous section. We could also use the training data set or merge both data sets, but $10.000$ samples are quite good already and we spare some computation time within the workshop. In practice we would go for the full data set of course.

## Clustering (K Means)
### Theory
The K means algorithm is one of the most popular clustering methods. For a given set of $n$ observations $(\textbf{x}_1 \dots \textbf{x}_n)$, the algorithm strives to partition the observations into $k$ sets $(S_1, \ldots, S_k)$, such that the inner cluster variance is minimized. Formally the goal is to find 
$$
\operatorname{argmin}_S \sum_{i=1}^k \sum_{\textbf{x} \in S_i} \|\textbf{x} - \mu_i\|^2,
$$
where ${\mu}_i$ denotes the mean of the set $S_i$.

The naive algorithm works iteratively for a given $k$:
1. Randomly initialize $k$ points $\mu_1, \dots, \mu_k$, we call those points *cluster centers*.
1. Assign every point to the nearest cluster center $\mu_i$. These points define the sets $S_i$.
1. Calculate the mean within each set $S_i$ and replace the previous cluster centers.
1. Repeat until the cluster centers are stable (with some tolerance).

The following animation illustrates this process:
\figenvsource{K means convergence.}{/assets/pages/datascience/K-means_convergence.gif}{}{https://commons.wikimedia.org/wiki/File:K-means_convergence.gif}

### Application
Keep in mind that each row of `X_test` corresponds to one image and consists of $784$ values. If we imagine a $784$-dimensional space, we could map a handwritten digit to a single point in that space and when we do this for every image in the test data set, we will end up with $10.000$ points in a $784$-dimensional space. Hopefully images containing the same digit will end up close to each other because in this case we could successfully find them with K means. Since we have ten digits, we expect to find ten clusters and of course we do not have to program that algorithm all by ourselves. 

#### MLJ introduction

Julia again offers a nice machine learning meta package called [`MlJ.jl`](https://github.com/alan-turing-institute/MLJ.jl) which provides a common interface to over 160 machine learning algorithms. The basic workflow for using an unsupervised model is given by the following steps:
1. Loading the data
1. Loading the model
1. Instantiating the model
1. Transforming the data
1. Instantiating the machine (this is how `MLJ.jl` calls the object that combines the model with data)
1. Fitting the machine/model by running `fit()` on the machine
1. optional: Transforming the data by applying the fitted model

#### MLJ application
The code for loading the data and model is straight-forward:
```julia
using DataFrames, MLDatasets, MLJ, ParallelKMeans

# Loading the data
df_test = MNIST(:test)
X_test = reshape(df_test.features, (28 * 28, :))'

# Loading the model
KMEANS = @load KMeans pkg=ParallelKMeans
```

`KMEANS` comes with several optional arguments. Unfortunately `MLJ` lacks documentation here:
```julia-repl
help?> KMEANS
search: KMEANS kmeans kmeans_model mach_kmeans model_kmeans ParallelKMeans PKGMODE_MANIFEST

  ParallelKMeans model constructed by the user.
  See also the [package documentation](https://pydatablog.github.io/ParallelKMeans.jl/stable).
```

But simply initializing `KMEANS` with default arguments and having a look at the package's [website](https://pydatablog.github.io/ParallelKMeans.jl/stable) gives some hints on how to parametrize the model:
```julia-repl
julia> KMEANS()
KMeans(
  algo = Hamerly(), 
  k_init = "k-means++", 
  k = 3, 
  tol = 1.0e-6, 
  max_iters = 300, 
  copy = true, 
  threads = 1, 
  rng = Random._GLOBAL_RNG(), 
  weights = nothing, 
  init = nothing)
```

Apparently `k` corresponds to the number of clusters, so we set this parameter to `10`:
```julia
# initialize the model
model_kmeans = KMEANS(k=10)
```

For setting up the machine, we first need to know how to transform our data. MLJ states that in general two-dimensional data is expected to be [tabular](https://alan-turing-institute.github.io/MLJ.jl/dev/getting_started/#Two-dimensional-data) and [observations correspond to rows, not columns](https://alan-turing-institute.github.io/MLJ.jl/dev/getting_started/#Observations-correspond-to-rows,-not-columns). Finally specific models need specific [scientific types](https://alan-turing-institute.github.io/MLJ.jl/dev/getting_started/#Inputs) as input. The first condition is already fulfilled for `X_test`. The second condition is easily fixed by calling `X_test_transf = MLJ.table(X_test_transf)` and for the last condition, we need to check whether `scitype(X_test_transf)` is of type `input_scitype(model_kmeans)`:
```julia-repl
julia> X_test_transf = MLJ.table(X_test)  # Transforming the data
Tables.MatrixTable{LinearAlgebra.Adjoint{Float32, Matrix{Float32}}} with 10000 rows, 784 columns, and schema:
 :x1    Float32
 :x2    Float32
 :x3    Float32
 :x4    Float32
 :x5    Float32
 :x6    Float32
 ⋮      
 :x780  Float32
 :x781  Float32
 :x782  Float32
 :x783  Float32
 :x784  Float32

julia> scitype(X_test_transf)
Table{AbstractVector{Continuous}}

julia> input_scitype(model_kmeans)
Table{<:AbstractVector{<:Continuous}}

julia> scitype(X_test_transf) <: input_scitype(model_kmeans)
true
```

Now we are ready to instantiate the machine and fit the model's parameters. Transforming the data is not necessary in this case, because we are only interested in the clusters' centers:
```julia
# Initializing the machine
mach_kmeans = machine(model_kmeans, X_test_transf)

# Fitting the model's parameters
fit!(mach_kmeans)
```

After fitting the model, we hopefully found ten representive cluster centers. With `report(mach_kmeans)` we can have a look at the *training* (fitting) results. 
```julia-repl
julia> r_machkmeans = report(mach_kmeans)
(cluster_centers = [0.0 0.0 … 0.0 0.0; 0.0 0.0 … 0.0 0.0; … ; 0.0 0.0 … 0.0 0.0; 0.0 0.0 … 0.0 0.0],
 iterations = 104,
 totalcost = 389412.2314496818,
 assignments = [1, 8, 6, 10, 2, 6, 1, 2, 2, 4  …  1, 9, 1, 10, 6, 5, 8, 4, 4, 3],
 labels = CategoricalArrays.CategoricalValue{Int64, UInt32}[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],)
```

Please note the format of the cluster centers. We have ten clusters given in ten columns. Each column has $28 \times 28$ entries corresponding to one point in the high dimensional space:
```julia-repl
julia> r_machkmeans.cluster_centers
784×10 Matrix{Float64}:
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 ⋮                        ⋮                   
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0  0.0
```

Each of these points can be reshaped to its 2D representative and visualized. Here we provide the code to plot the $i$-th cluster providing `r_machkmeans`:
```julia
using StatsPlots; gr()

function plot_clustercenter(report, i)
    cc = report.cluster_centers[:, i]  # get one cluster
    cc_reshaped = reshape(cc, 28, 28)    # reshape from flat to 2D
    StatsPlots.plot(convert(Matrix{Gray}, cc_reshaped')) # Correctly rotate the image, transform to grey and show with StatsPlots
    
    return nothing
end
```

In our case the ten cluster centers look like this:
\figalt{Cluster centers - KMeans}{/assets/pages/datascience/unsupervised_clusters_kmeans.png}

We can clearly recognize the numbers $0$, $2$, $3$, $6$, $8$, $9$, but obviously it is more difficile for numbers $1$, $4$, $5$, $7$. When looking closely, we see parts of the silhouettes too, but we are of course not completly happy with this fit. We might be able to grasp more of the underlying structure by increasing the number of clusters.

\exercise{Rerun this experiment with 20 clusters centers and evaluate the results.}

## Dimensionality Reduction (Principal Component Analysis)
