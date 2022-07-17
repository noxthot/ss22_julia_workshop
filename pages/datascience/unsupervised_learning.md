@def title = "Unsupervised Learning"
@def hascode = true

@def tags = ["Data Science", "unsupervised learning"]

# Unsupervised Learning
The term *unsupervised learning* subsumes all kinds of algorithms that are used to gain insights from such an unlabeled data set.
Typically these algorithms fall into three main categories:
- **Association rules**: to discover relationships between different variables (e.g. for recommender systems: *customers who bought X also bought Y*)
- **Clustering**: for grouping data based on their similarities (e.g. grouping news articles about similar topics)
- **Dimensionality reduction**: for transforming data from a high-dimensional to a low-dimensional space (e.g. used for denoising images)

In this section we will quickly glimpse into clustering with an algorithm called *K means*, and into dimensionality reduction by applying PCA (*Principal Component Analysis*) and UMAP (*Uniform Manifold Approximation and Projection*).

Let us imagine that we only have a folder with 10.000 images of various hand written digits without any label and we would like to sort them into ten buckets: One bucket where we only have images of 0s, one bucket where we only have images of 1s and so on. Technically speaking, we are expecting to see ten different digits (*categories*) and within each category, the similarity between the images is expected to be *high*. How are we able to tackle this problem? One possibility is to sort them by hand. A less time consuming approach could be to apply some unsupervised learning algorithms.

## Clustering (K Means)
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


## Dimensionality Reduction (Principal Component Analysis)
