@def title = "Introduction"
@def hascode = true

@def tags = ["introduction"]

# Introduction to Julia 

## Running Julia code

There are several ways to write and run Julia code:

### The Julia [REPL](https://docs.julialang.org/en/v1/stdlib/REPL/) (read-evaluate-print-loop)

We can start it by typing `julia` (or the full path to the executable) on the command line. The REPL itself comes with four distinct modes that can be very useful to know:
- **Julia mode**: This is the default mode when we start Julia. The prompt starts with `julia>`. Here we may type Julia expressions which get evaluated when pressing enter. The resulting output will be presented immediately after evaluation.
\example{```julia-repl
julia> 1+1
2

julia> 
```
}
- **Package mode**: We can switch to this mode by typing `]` and the prompt will change to `(@v1.7) pkg>` (the version number will depend on the installation). Here we can directly interact with the [package manager](./package_manager) and add or update packages. To get a complete list of possibilities type `?`
\example{```julia-repl
(@v1.7) pkg> ?
  Welcome to the Pkg REPL-mode. To return to the julia> prompt, either press backspace when the input line is empty or press Ctrl+C.

  Full documentation available at https://pkgdocs.julialang.org/

  Synopsis

  pkg> cmd [opts] [args]

  Multiple commands can be given on the same line by interleaving a ; between the commands. Some commands have an alias, indicated below.

  Commands

  activate: set the primary environment the package manager manipulates

  add: add packages to project

  build: run the build script for packages

  develop, dev: clone the full package repo locally for development

  free: undoes a pin, develop, or stops tracking a repo

  gc: garbage collect packages not used for a significant time

  generate: generate files for a new project

  help, ?: show this message

  instantiate: downloads all the dependencies for the project

  pin: pins the version of packages

  precompile: precompile all the project dependencies

  redo: redo the latest change to the active project

  remove, rm: remove packages from project or manifest

  resolve: resolves to update the manifest from changes in dependencies of developed packages

  status, st: summarize contents of and changes to environment

  test: run tests for packages

  undo: undo the latest change to the active project

  update, up: update packages in manifest

  registry add: add package registries

  registry remove, rm: remove package registries

  registry status, st: information about installed registries

  registry update, up: update package registries

(@v1.7) pkg> 
```
}
- **Help mode**: We can switch to this mode by typing `?` and the prompt will change to `help?>`. Julia will print the help and documentation for everything we ask for (related to Julia).
\example{
```julia-repl
help?> +
search: +

  +(x, y...)

  Addition operator. x+y+z+... calls this function with all arguments, i.e. +(x, y, z, ...).

  Examples
  ≡≡≡≡≡≡≡≡≡≡

  julia> 1 + 20 + 4
  25
  
  julia> +(1, 20, 4)
  25

  ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

  dt::Date + t::Time -> DateTime

  The addition of a Date with a Time produces a DateTime. The hour, minute, second, and millisecond parts of the Time are used along with the year, month, and day of the Date to create the new DateTime. Non-zero microseconds
  or nanoseconds in the Time type will result in an InexactError being thrown.

julia>
```
}
- **Shell mode**: We can switch to this mode by typing `;` and the prompt will change to `shell>`. Now we are in the usual shell and we can type any commands we need to evaluate.
\example{
```
shell> pwd
/home/user/ws22_julia_workshop

shell>
```
}

**You exit all of the (non) Julia modes by pressing Backspace.**

### Visual Studio Code 
See [Main introduction](../../index.html#julia_and_vscode)

### Other Interactive Development Environments 
A lot of other IDEs or text editors like Jupyter, Sublime Text, Nano, vim and many more can also be used in connection with Julia. Some integrate the evaluation inside the editor for others we will have to do this in the command line. Note, that we can always run Julia code from command line by typing `julia myProgram.jl`

If we are just exploring some possibilities the REPL is very useful, once we try running some program or simply want to repeat a process we will have to switch to running code from a file. In the REPL we can use the arrow keys *up* and *down* to navigate through previous calls (if our command line allows this).

## Additional sources

If you are already familiar with another programming language it might be worth visiting [Noteworthy Differences from other Languages](https://docs.julialang.org/en/v1/manual/noteworthy-differences/) from the Julia documentation. 

