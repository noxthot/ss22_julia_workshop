# Introduction to julia

Julia is a free and open source scientific programming language with a vast ecosystem of libraries that aim towards scientific computing. Visit [julialang.org](https://julialang.org) for the download, documentation, learning materials and much more. Julia manages allow the best of both worlds, high-level interpreter and low-level compiler languages. It offers the high performance of compiled languages like C or Fortran by still bringing in the simplicity of dynamic languages like Python or R. 

In this workshop we are going to take a look at Julia by starting to the basics and working our way up to advanced topics like multi processor programming and DataFrames.

Below you find the the schedule, where each section corresponds to one workshop session. 

BOX
We ask you to install Julia, VSCode and the Julia plugin for VSCode before the workshop so we can get right into the lecture. 
Please find some instructions here: 


```@contents
Pages = [
    "intro/introduction.md",
    "hpc/hpc.md",
    "ds/datascience.md",
    ]
Depth = 2
```

## Setup
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
sudo cp julia-1.7.3 /opt/
```
and link the binary
```bash
sudo ln -s /opt/julia-1.7.3/bin/julia /usr/local/bin/julia
```

### Visual Studio Code

Follow the instructions on [https://code.visualstudio.com/][https://code.visualstudio.com/] to install Visual Studio Code. 

### Installing the Julia extension for Visual Studio Code

Follow the instructions on [VSCode Julia extension](https://www.julia-vscode.org/docs/dev/gettingstarted/#Installing-the-Julia-extension) to install and configure the extension. You find the basic instructions from above here as well.

Please try the small test example from [here](https://www.julia-vscode.org/docs/dev/gettingstarted/#Creating-Your-First-Julia-Hello-World-program) to see if everything works. 