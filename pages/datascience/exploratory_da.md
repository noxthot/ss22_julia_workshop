@def title = "Exploratory Data Analysis"
@def hascode = true

@def tags = ["Data Science", "Data Analysis"]

# Exploratory Data Analysis

\toc

## Introduction

In most data science projects *exploratory data analysis* (EDA) is an essential first step. The primary aim is to analyse a given data set to summarize its main characteristics. Therefore EDA often uses data visualization methods and statistical methods.

In this section we will continue to work with the Stack Overflow survey data set as shown in the [previous section](./pages/datascience/dataframes/). To summarize the necessary steps to start with this section, see the code below:
First of all you need to add and load the package:
```julia-repl
julia> using CSV, DataFrames

julia> selcols = ["Age", "Country", "ConvertedCompYearly", "DevType", "Employment", "Ethnicity", "Gender", "OrgSize", "YearsCode"]
9-element Vector{String}:
 "Age"
 "Country"
 "ConvertedCompYearly"
 "DevType"
 "Employment"
 "Ethnicity"
 "Gender"
 "OrgSize"
 "YearsCode"

julia> df = CSV.read("survey_results_public.csv", DataFrame; missingstring="NA", select=selcols)
83439×9 DataFrame
   Row │ Employment                         Country                            YearsCode  DevType                          ⋯
       │ String?                            String                             String31?  String?                          ⋯
───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
     1 │ Independent contractor, freelanc…  Slovakia                           missing    Developer, mobile                ⋯
     2 │ Student, full-time                 Netherlands                        7          missing
     3 │ Student, full-time                 Russian Federation                 missing    missing
   ⋮   │                 ⋮                                  ⋮                      ⋮                      ⋮                ⋱
 83438 │ Employed full-time                 Canada                             5          Developer, back-end
 83439 │ Employed full-time                 Brazil                             14         Developer, front-end;Developer,  ⋯
                                                                                            6 columns and 83434 rows omitted
```

## Data Wrangling
In a first step, let us get a descriptive overview over the data by having a applying `describe()`. 
Also note the additional arguments that are given to `show()`for displaying all rows and columns.
```julia
julia> show(describe(df), allrows=true, allcols=true)
9×7 DataFrame
 Row │ variable             mean       min                       median   max                                nmissing  eltype                   
     │ Symbol               Union…     Any                       Union…   Any                                Int64     Type                     
─────┼──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1 │ Employment                      Employed full-time                 Student, part-time                      116  Union{Missing, String}
   2 │ Country                         Afghanistan                        Zimbabwe                                  0  String
   3 │ YearsCode                       1                                  More than 50 years                     1798  Union{Missing, String31}
   4 │ DevType                         Academic researcher                System administrator;Senior Exec…     16955  Union{Missing, String}
   5 │ OrgSize                         1,000 to 4,999 employees           Just me - I am a freelancer, sol…     22713  Union{Missing, String}
   6 │ Age                             18-24 years old                    Under 18 years old                     1032  Union{Missing, String31}
   7 │ Gender                          Man                                Woman;Or, in your own words:           1153  Union{Missing, String}
   8 │ Ethnicity                       Biracial                           White or of European descent;Sou…      3975  Union{Missing, String}
   9 │ ConvertedCompYearly  1.18426e5  1                         56211.0  45241312                              36595  Union{Missing, Int64}
```

Since most columns are `String` types, there is not that much to see but we still get a helpful impression about the number of missing fields. In the last section we stated that we are interested to do a little study in terms of income, so missing values there are not really feasible. Let us remove that rows in an exercise.

\exercise{
    Look at the manual of `dropmissing` and use that function to drop every row that is lacking an entry in `ConvertedCompYearly`. Hint: To not having to reload the initial data set whenever you did a mistake it might be a good idea to create a backup first: `backup_df = copy(df)`. So later you can always bring it back by calling `df = copy(backup_df)`.
}

After the previous exercise you should have $46844$ rows in your data set.

Let us try to get an overview over the yearly compensation. Again we can use `describe` on just that column to get more detailed summary statistics:
```julia-repl
julia> describe(df.ConvertedCompYearly)
Summary Stats:
Length:         46844
Missing Count:  0
Mean:           118426.152890
Minimum:        1.000000
1st Quartile:   27025.000000
Median:         56211.000000
3rd Quartile:   100000.000000
Maximum:        45241312.000000
Type:           Int64
```

So we have $46844$ rows in this data set. We already removed the missing values, so there is no missing value left. The arithmetic mean is a lot higher than the median which indicates that the data is heavily skewed to the right. 25% of the data appears to be smaller than $27025$ and 75% of the data larger than $100000$. The maximum is given by an entry of over 45Mio and there are also participants with a yearly income of one Dollar. 

Let us create some plots to gain deeper insights. We have already seen the use of `Plots.jl` before. In this section we will switch to `StatsPlots.jl`, which is a drop-in replacement for `Plots.jl` since on one hand it supports easy plotting of dataframes and on the other hand also offers additional statistical recipes.

Creating a boxplot is fairly simple:
```julia
using StatsPlots
@df df boxplot(:ConvertedCompYearly)
```

\figalt{Boxplot}{/assets/pages/datascience/exploratory_da_boxplot.png}

Note that `@df` is the call of the macro and the second `df` is the name of our dataframe.

Apparently a couple of outliers totally screw our visualization. Fortunately there is an [undocumented function argument](https://github.com/JuliaPlots/StatsPlots.jl/blob/db1a9e2f58ff9fb4beb3a0f7d133fcc8fd72b812/src/boxplot.jl#L14) that allows to get rid of the outliers within the visualization:
```julia-repl
@df df boxplot(:ConvertedCompYearly, outliers=false)
```

So apparently around 50% of the developers within the DACH region earn $27000$ to $100000$ euros per year, the median being at about $56000$.

\figalt{Boxplot}{/assets/pages/datascience/exploratory_da_boxplot_no_outliers.png}

Let us also have a look at the [cumulative distribution function (CDF)](https://en.wikipedia.org/wiki/Cumulative_distribution_function) of our data column. Therefor we simply sort the values of the column and plot them on the $y$ axis while we scale the $x$-axis from $0$ to $1$.

```julia
julia> plot(sort(df.ConvertedCompYearly), (1:nrow(df)) ./ nrow(df))
```

\figalt{Cumulative distribution function plot}{/assets/pages/datascience/exploratory_da_cdf.png}

The plot tells us (just like the quartiles already indicated) that most of the survey participates earn a lot less than 10Mio. Dollars. Removing outliers is a very controversial topic. Usually it is always good practice to try to understand the source of outliers and to consult a domain expert to decide whether or not to remove them. In this workshop we want to show the pitfalls when working with real data, but we also want to pragmatically clean the data to practice some data wrangling. So let us assume that it is very unusual for a software developer to earn more than 1Mio per year but to be sure, let us also check the entries where `ConvertedCompYear` exceeds 1Mio. We leave this as an exercise.

\exercise{
    Filter `df` for entries where `ConvertedCompYear` exceeds 1Mio and have a look at the remaining data rows. 
    Hints: Check the manual of `filter`. When you are running your code in the Julia REPL within VS Code you will find a dataframe viewer in your Julia extension's workspace. Otherwise it might also make sense to quickly write the dataframe to a CSV and have a look in one of the usual spreadsheet programs.
}

Apparently most of the top earners declared to be software developers. Let us filter the data set such that we only have entries $< 1$Mio from now on.

\exercise{
    Filter (and store) `df` for entries where `ConvertedCompYear` is equal or less than 1Mio.
}

Now you should have $46237$ entries. Next, we only want to look at the DACH region.

\exercise{
    Filter (and store) `df` for `Country` being `Austria`, `Germany` or `Switzerland`.
}

Now we are down to $4212$ entries. Have a look at the column `Gender`. Besides `Man` and `Woman` there are lot more categories, but unfortunately with very little sample sizes. Thus adding these to further visualizations would lead to misleading conclusions. It would require additional engineering to address these little sample sizes and therefore is out of scope of this workshop.
So let us also add a filter in this column.

\exercise{
    Filter (and store) `df` for `Gender` being `Man` or `Woman`.
}

You should now see $4061$ entries. In a final step, let us convert the compensation from dollars into euros and store this information in a column named `EuroCompYearly`. As of 1st July, 2022 one dollar corresponds to $0.96$ Euros:
```julia
df[!, :EuroCompYearly] = 0.96 * df[!, :ConvertedCompYearly]
```

Here you find the solution for all manipulating tasks in this section.
\solution{
```julia
using CSV, DataFrames

selcols = ["Age", "Country", "ConvertedCompYearly", "DevType", "Employment", "Ethnicity", "Gender", "OrgSize", "YearsCode"]

df = CSV.read("survey_results_public.csv", DataFrame; missingstring="NA", select=selcols)

dropmissing!(df, :ConvertedCompYearly)

filter!(x -> x.ConvertedCompYearly <= 1e6, df)
filter!(x -> x.Country in ["Austria", "Germany", "Switzerland"], df)
filter!(x -> !ismissing(x.Gender) && (x.Gender in ["Man", "Woman"]), df)

df[!, :EuroCompYearly] = 0.96 * df[!, :ConvertedCompYearly]
```
}

## Case Studies
Starting from this data set, let us conduct some case studies in the upcoming exercise.

\exercise{
1. What is the number of austrian, german and swiss survey participants? Hint: Have a look at `groupby`, `combine` and `nrow`.
1. How does the median salary compare between full-time employments and independent contractors in Austria. Hint: `Statistics.jl` provides a `median` function.
1. How does the median salary of data scientists compare to non data scientists in the DACH region. Hint: Have a look at `occursin` and `transform`.
1. How many data scientists per country are left in our data set?
}

\solution{
1. 
```julia-repl
julia> combine(groupby(df, :Country), nrow => :count)
3×2 DataFrame
 Row │ Country      count 
     │ String       Int64 
─────┼────────────────────
   1 │ Austria        437
   2 │ Germany       3095
   3 │ Switzerland    529
```

1. 
```julia-repl
julia> using Statistics
julia> combine(groupby(filter(x -> x.Country == "Austria", df), :Employment), :EuroCompYearly  => median)
4×2 DataFrame
 Row │ Employment                         EuroCompYearly_median 
     │ String?                            Float64               
─────┼──────────────────────────────────────────────────────────
   1 │ Independent contractor, freelanc…                74718.7
   2 │ Employed full-time                               54481.0
   3 │ Employed part-time                               31282.6
   4 │ missing                                          31127.0
```

1. 
```julia-repl
julia> transform!(df, :DevType => ByRow(x -> !ismissing(x) && occursin(x, "Data Scientist")) => :isdatascientist)
julia> combine(groupby(df, :isdatascientist), :EuroCompYearly => median)
2×2 DataFrame
 Row │ isdatascientist  EuroCompYearly_median 
     │ Bool             Float64               
─────┼────────────────────────────────────────
   1 │           false                64028.2
   2 │            true                78451.2
```

1. 
```julia-repl
julia> combine(groupby(df, [:Country, :isdatascientist]), nrow => :count)
4×3 DataFrame
 Row │ Country      isdatascientist  count 
     │ String       Bool             Int64 
─────┼─────────────────────────────────────
   1 │ Austria                false    437
   2 │ Germany                false   3088
   3 │ Germany                 true      7
   4 │ Switzerland            false    529
```
}

## Data Visualisation

In this workshop we have already used `Plots.jl` and `StatsPlots.jl` a couple of times to visualize functions and data. It may come to a surprise that `Plots.jl` and `StatsPlots.jl` are actually no plotting packages. They are rather plotting metapackages which provide an interface over many different plotting libraries. The specific plotting library that is actually being used to create the plots is referred to as the [*backend*](https://docs.juliaplots.org/stable/tutorial/#plotting-backends) and it is easy to switch and use different plotting libraries. So far we always used the default backend `GR` which is fast, but lacks interactivity. Depending on the requirements you might like to try `PlotlyJS` for interactivity or PyPlot because you like the functionality of Matplotlib (known from Python). To a get a good overview, have a look at the [Plots.jl documentation](https://docs.juliaplots.org/stable/backends/#backends).

