@def title = "Saving Dataframes"
@def hascode = true

@def tags = ["Data Science", "Dataframes"]

# Saving dataframes

Now that we prepared our data source and noticed how much work it was to restore the original data types it would make sense to save the current state of our dataframe. Our data source was provided in the CSV format which has the major disadvantage that Julia needs to elobarately guess the data type of each column, the used decimal symbol and so on. But it is also possible to store this so-called meta data along with the dataframe. [`Arrow.jl`](https://juliaio.github.io/HDF5.jl/stable/) provides sufficient metadata to know how each item has to be interpreted (at least for simple types). Additionally this format is compatible across different computer architectures and can be read with various programming languages (like e.g. Julia, Python and R).

To write a dataframe into an arrow-file simply call:
```julia
using Arrow
Arrow.write("survey.arrow", df_survey)
```

Loading the file again is slightly more complicated since we need to transform the loaded Arrow Table back into a DataFrame:
```julia
using Arrow, DataFrames

df_survey = DataFrame(Arrow.Table("survey.arrow"))
```