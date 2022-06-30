@def title = "Dataframes"
@def hascode = true

@def tags = ["DataScience", "Dataframes"]

# Dataframes

Data Science mostly requires to work with tabular data. With [`DataFrames.jl`](https://dataframes.juliadata.org/stable/) Julia provides a set of tools for working with tabular data. When you are already familiar with `pandas` (Python) or `dplyr` (R) you will be quickly able to get started with Data Wrangling using `DataFrames.jl` since design and functionality are quite similar.

First of all you of course need to add and load the package:
```julia-repl
pkg> add DataFrames
julia> use DataFrames
```

Let us start with an empty `DataFrame`:
```julia-repl
julia> DataFrame()
0×0 DataFrame
```

It is also easy to initialize a `DataFrame` with a couple of columns:
```julia-repl
julia> DataFrame(country=["Austria", "Germany", "Switzerland"], population=[8_917_000, 83_240_000, 8_637_000], continent="Europe")
3×3 DataFrame
 Row │ country      population  continent 
     │ String       Int64       String    
─────┼────────────────────────────────────
   1 │ Austria         8917000  Europe
   2 │ Germany        83240000  Europe
   3 │ Switzerland     8637000  Europe
```

Note that the continent was given as scalar "Europe" and broadcasted to fill every row of the created `DataFrame`.

In case you want to initialize a `DataFrame` with names that are not valid Julia identifiers (e.g. containing spaces) you can also use the following form:
julia> DataFrame("country" => ["Austria", "Germany", "Switzerland"], "population 2020" => [8_917_000, 83_240_000, 8_637_000], "continent" => "Europe")
```julia-repl
3×3 DataFrame
 Row │ country      population 2020  continent 
     │ String       Int64            String    
─────┼─────────────────────────────────────────
   1 │ Austria              8917000  Europe
   2 │ Germany             83240000  Europe
   3 │ Switzerland          8637000  Europe
```

And in case you already got your data in a dictionary where the keys are `Strings` or `Symbols`, simply initialize your `DataFrame` using that dictionary:
```julia-repl
julia> mydict = Dict("country" => ["Austria", "Germany", "Switzerland"], "population 2020" => [8_917_000, 83_240_000, 8_637_000], "continent" => "Europe")
Dict{String, Any} with 3 entries:
  "population 2020" => [8917000, 83240000, 8637000]
  "continent"       => "Europe"
  "country"         => ["Austria", "Germany", "Switzerland"]

julia> DataFrame(mydict)
3×3 DataFrame
 Row │ continent  country      population 2020 
     │ String     String       Int64           
─────┼─────────────────────────────────────────
   1 │ Europe     Austria              8917000
   2 │ Europe     Germany             83240000
   3 │ Europe     Switzerland          8637000
```

Also note that the data types of the columns are printed.
