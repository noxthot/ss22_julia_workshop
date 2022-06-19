@def title = "SS22 Julia Workshop"
@def tags = ["syntax", "code"]

# Introduction to julia

Julia is a free and open source scientific programming language with a vast ecosystem of libraries that aim towards scientific computing. Visit [julialang.org](https://julialang.org) for the download, documentation, learning materials and much more. Julia manages allow the best of both worlds, high-level interpreter and low-level compiler languages. It offers the high performance of compiled languages like C or Fortran by still bringing in the simplicity of dynamic languages like Python or R. Julia recently entered its teens and for this occasion a blog post was published with the title [Why We Use Julia, 10 Years Later](https://julialang.org/blog/2022/02/10years/) as a follow up to the [Why We Created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/). Both entries are a good read and give you an insight into the language and its creators.

In this workshop we are going to take a look at Julia by starting with the basics and working our way up to advanced topics like multi processor programming and DataFrames.

## Some general words on the the organisation of this workshop

For this workshop you do not need to be an Julia expert, not even a programming expert. We will introduce programming and Julia concepts along with examples. For this purpose you will find code blocs that you can copy if necessary (top right corner `copy`). Furthermore, if we think something is very important we will highlight it with a box:

@@important
Pay extra attention to the content here.
@@

We also have various environments with different color coding that usually are collapsed to not hinder the reading process:
- Examples are blue
\example{Examples are also quite nice because they make sure you have an idea what is happening.}
- Exercises are green
\exercise{Exercises are her for you to work on, no worries not at home or in your off hours but with us in the workshop.}

That is about all we wanted to let you know, so lets get into it.

## Setup

@@important
We ask you to install Julia, VSCode and the Julia plug-in for VSCode **before** the workshop so we can get right into the lecture, if you have difficulties please let us know and we update the content on this page. 
@@

Follow the following setup to install everything that is required to get started with the workshop.

### Julia 
To install Julia on your system please download the latest stable binary from [Setup Download](https://julialang.org/downloads/) and follow the instructions on [Setup Julia](https://julialang.org/downloads/platform/) for the installation.

On the above link you will also find instructions on how to uninstall Julia, even though we are quite sure you will not want to do it ;).

#### Addition for Linux:
Some distributions allow the installation via the package manager or the software center, note that this is often a very old version, so this method is not recommend for beginners. 

A convenient location for the Julia folder is `/opt/` and creating a link to the binary in `/usr/local/bin/` to make sure it is found on the path. 

In your terminal use `wget` to download the late
```bash
wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.3-linux-x86_64.tar.gz
```
extract the tar ball with
```bash
tar -xvzf julia-1.7.3-linux-x86_64.tar.gz
```
copy the folder to `/opt/`
```bash
sudo cp -r julia-1.7.3 /opt/
```
and link the binary
```bash
sudo ln -s /opt/julia-1.7.3/bin/julia /usr/local/bin/julia
```

### Visual Studio Code

Follow the instructions on [https://code.visualstudio.com/](https://code.visualstudio.com/) to install Visual Studio Code. 

Visual Studio Code or for short VSCode is a fully fledged Interactive Development Environment (IDE), complete with code highlighting, auto complete, Debugger, git integration and so much more. In order to make VSCode fully compatible with Julia we need to install the Julia extension. 

### Installing the Julia extension for Visual Studio Code

Follow the instructions on [VSCode Julia extension](https://www.julia-vscode.org/docs/dev/gettingstarted/#Installing-the-Julia-extension) to install and configure the extension. You find the basic instructions from above here as well.

\exercise{Please try the small test example from [here](https://www.julia-vscode.org/docs/dev/gettingstarted/#Creating-Your-First-Julia-Hello-World-program) to see if everything works.}
