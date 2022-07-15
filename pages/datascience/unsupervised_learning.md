@def title = "Unsupervised Learning"
@def hascode = true

@def tags = ["Data Science", "unsupervised learning"]

# Unsupervised Learning
## Introduction
Let us assume that we took several pictures with our camera. Typically, thees photos are simply stored as image files without any further description about the content of the image. We could understand this collection of photos as a data set and since we have no further description of the individual images, we have a unlabeled data set. By augmenting the unlabeled data set with interesting information, we obtain a labeled data set. *Interesting* in this context depends on the goal we want to achieve within our use case. For example it could be interesting to know what the image is about, then we might label the images with descriptions like *beach*, *person*, *landscape*, *animal* and so on. Or we would like to know whether the image was taken at day or night so we label each image with this information, or possibly we are just interested in the number of persons on an image.

Simply speaking, labeled data is a data sample that augments each data point with some meaningful tag(s) and in unlabeled data this tag is missing. The term *unsupervised learning* subsumes all kinds of algorithms that are used to gain insights from such an unlabeled data set.
Typically these algorithms fall into three main categories:
- **Association rules**, to discover relationships between different variables (e.g. for recommender systems *customers who bought X also bought Y*)
- **Clustering**: for grouping data based on their similarities (e.g. grouping news articles about similar topics)
- **Dimensionality reduction**, for transforming data from a high-dimensional to a low-dimensional space (e.g. used for denoising images)

In this section we will quickly glimpse into clustering with an algorithm called *K means*, and into dimensionality reduction by applying PCA (*Principal Component Analysis*) and UMAP (*Uniform Manifold Approximation and Projection*).

## MNIST data set
To demonstrate applications of unsupervised learning algorithms we have a look at the famous MNIST data set. This data set contains 70.000 images of handwritten digits and additionally a label that tells the digit which is displayed in the invidiual images. In this section the labels are not consumed by the algorithms, but we will use them to illustrate some results.

The data set looks like this:
\figenvsource{MNIST data set.}{/assets/pages/datascience/MnistExamples.png}{}{Original source: https://en.wikipedia.org/wiki/MNIST_database#/media/File:MnistExamples.png}

For this section, let us imagine that we only have a folder with 10.000 images of random hand written digits without any label and we would like to sort them into ten buckets: One bucket where we only have images of 0s, one bucket where we only have images of 1s and so on. Technically speaking, we are expecting to see ten different digits (*categories*) and within each category, the similarity between the images is expected to be *high*. How are we able to tackle this problem?

## Clustering (K Means)
The K means algorithm is one of the most popular clustering methods. For a given set of $n$ observations $(\textbf{x}_1 \dots \textbf{x}_n)$, the algorithm strives to partition the observations into $k$ sets $(S_1, \ldots, S_k)$, such that the inner cluster variance is minimized. Formally the goal is to find 
$$
\operatorname{argmin}_S \sum_{i=1}^k \sum_{\textbf{x} \in S_i} \|\textbf{x} - \mu_i\|^2,
$$
where ${\mu}_i$ denotes the mean of the set $S_i$.

The naive algorithm works iteratively for a given $k$:
1. Randomly initalize $k$ points $\mu_1, \dots, \mu_k$, we call those points *cluster centers*.
1. Assign every point to the nearest cluster center $\mu_i$. These points define the sets $S_i$.
1. Calculate the mean within each set $S_i$ and replace the previous cluster centers.
1. Repeat until the cluster centers are stable (with some tolerance).

The following animation illustrates this process:
\figenvsource{K means convergence.}{/assets/pages/datascience/K-means_convergence.gif}{}{https://commons.wikimedia.org/wiki/File:K-means_convergence.gif}



## Dimensionality Reduction (Principal Component Analysis)