@def title = "Data sets"
@def hascode = true

@def tags = ["Data Science", "data sets"]

# Data sets
Let us assume that we took several pictures with our camera. Typically, these photos are simply stored as image files without any further description about the content of the images. We could understand this collection of photos as a data set and since we have no further description of the individual images, we speak about an *unlabeled data set*. By augmenting the unlabeled data set with interesting information, we obtain a *labeled data set*. *Interesting* in this context depends on the goal we want to achieve within our use case. For example it could be interesting to know the content of the image, then we might label the images with descriptions like *beach*, *person*, *landscape*, *animal* and so on. Or we would like to know whether the image was taken at day or night so we label each image with this information, or possibly we are just interested in the number of persons in an image.

Simply speaking, a *data set* is a collection of data (and of course not restricted to images), *labeled data* is a data set that augments each data point with some meaningful tag(s) and in *unlabeled data* this tag is missing

## MNIST data set
To demonstrate some applications of machine learning algorithms we will have a look at the famous MNIST data set. This data set contains of 70.000 images of handwritten digits and additionally a label that tells the digit which is displayed in the invidiual images. In this section the labels are not consumed by the algorithms, but we will use them to illustrate some results.

The data set looks like this:
\figenvsource{MNIST data set.}{/assets/pages/datascience/MnistExamples.png}{}{Original source: https://en.wikipedia.org/wiki/MNIST_database#/media/File:MnistExamples.png}
