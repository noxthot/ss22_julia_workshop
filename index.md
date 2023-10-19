@def title = "SS22 Scientific Coding with Julia"
@def tags = ["syntax", "code"]

# Preface

This workshop was originally designed for the [DK CIM/DP DOCC Summer School 2022](https://www.uibk.ac.at/dk-cim/dokumente/folder_summerschool2022.pdf) as part of the [Doctoral College Computational Interdisciplinary Modelling (DK CIM)](https://www.uibk.ac.at/dk-cim/index.html.en) and intended for roughly 12 hour workshop. 

## Citation
In case you want to refer to this lecture material, use the following BibTex snippet:
```bibtex
@misc{scijul2022, 
    doi = {10.48517/MT6N-PB56},
    url = {https://www.doi.org/10.48517/mt6n-pb56}, 
    author = {Ehrensperger, Gregor and Kandolf, Peter and Kusch, Jonas},
    keywords = {FOS: Mathematics},
    language = {en},
    title = {SS22 Scientific Programming with Julia}, 
    publisher = {Universität Innsbruck},
    year = {2022},
    copyright = {Creative Commons Attribution Share Alike 4.0 International}
}
```


# Getting started with Julia

Julia is a free and open source scientific programming language with a vast ecosystem of libraries that aim towards scientific computing. Visit [julialang.org](https://julialang.org) for the download, documentation, learning materials and much more. Julia manages to allow the best of two worlds, high-level interpreter and low-level compiler language. It offers the high performance of compiled languages like C or Fortran by still bringing in the simplicity of dynamic languages like Python or R. Julia recently entered its teens and for this occasion a blog post was published with the title [Why We Use Julia, 10 Years Later](https://julialang.org/blog/2022/02/10years/) as a follow up to the [Why We Created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/). Both entries are a good read and give you an insight into the language and its creators.

In this workshop we are going to take a look at Julia by starting with the basics and working our way up to advanced topics like data science and multi processor programming.

## Acknowledgment

We want to give a huge shout-out to [Stephan Antholzer](https://www.uibk.ac.at/mathematik/personal/antholzer/) for advice and numerous suggestions that have helped us to improve the quality of the content in many places.

## Some general words on the organization of this workshop

For this workshop you do not need to be a Julia expert, not even a programming expert. We will introduce programming and Julia concepts along with examples. For this purpose you will find code blocks that you can copy if necessary (top right corner `copy`). Furthermore, if we think something is very important we will highlight it with a box:

@@important
Pay extra attention to the content here.
@@

We also have various environments with different color coding that usually are collapsed to not hinder the reading process:
- Examples are green
\example{Examples are also quite nice because they make sure you have an idea what is happening.}
- Exercises are blue
\exercise{Exercises are here for you to work on, no worries not at home or in your off hours but with us in the workshop.

Some exercises will have *hidden* solutions which can be accessed by adding `?solution=true` to the URL of the page. 
This way it is more likely that everybody tries to do the exercises without first looking at the sample solution.}

That is about all we wanted to let you know, so let us get into it.

## Setup

@@important
We ask you to install Julia, VSCode and the Julia extension for VSCode **before** the workshop so we can get right into the lecture. If you have difficulties please let us know and we update the content on this page. 
@@

@@important
This workshop was prepared with Julia v1.7.3.
@@

Follow the setup in this section to install everything that is required to get started.

### Julia 
To install Julia on your system please download the latest stable binary from [Setup Download](https://julialang.org/downloads/) and follow the instructions on [Setup Julia](https://julialang.org/downloads/platform/) for the installation.

On the above link you will also find instructions on how to uninstall Julia, even though we are quite sure you will not want to do it ;).

#### Addition for Linux:
Some distributions allow the installation via the package manager or the software center, note that this is often a very old version, so this method is not recommend for beginners. 

A convenient location for the Julia folder is `/opt/` and by creating a link to the binary in `/usr/local/bin/` we can make sure it is found in the path. 

In your terminal use `wget` to download the latest version
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

If you run into difficulties with VSCode in connection with Julia, the [documentation](https://www.julia-vscode.org/docs/dev/) of the Julia extension is an excellent source for help. 

## Julia and VSCode

There is no better resource than [https://www.julia-vscode.org](https://www.julia-vscode.org) to explain how to program Julia with VSCode, you also get an interactive view that explains some of the following items. Nevertheless, we recall the most basic setup. 

- On the left you have the navigational panel where you can switch between context of the viewer. Specifically you will need the **Explorer** and **Julia**. 
- Right next to it you get additional information with regards to the current context. For example you will see files, when you are in **Explorer** or you see your *Workspace*, *Documentation*, and *Plot Navigation* in the **Julia** context.
- When opening a Julia file (ending in `.jl`) (double click in the **Explorer** - single click only gives you a quick view and the file will not stay open if you click another file) you have syntax highlighting and auto complete right away. 
- To run a Julia program, click the small arrow on the top left or `Ctrl+F5` if you prefer keyboard shortcuts. Both will run the code in the Julia REPL and you see the output on the bottom.

With these short basics and [https://www.julia-vscode.org](https://www.julia-vscode.org) you are good to go for the workshop. You can also find a list of [keybindings](https://www.julia-vscode.org/docs/dev/userguide/keybindings/), once you are more familiar with the IDE and you never want to get your hands off the keyboard. 

In VSCode you can always type `CTRL + SHIFT + P` to get access to the prompt and execute commands within VSCode.
