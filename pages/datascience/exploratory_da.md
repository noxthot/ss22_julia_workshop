@def title = "Exploratory Data Analysis"
@def hascode = true

@def tags = ["Data Science", "Data Analysis"]

# Exploratory Data Analysis

In most Data Science projects Exploratory Data Analysis (EDA) is an essential first step. The primary aim is to analyse a given data set to summarize its main characteristics. Therefore EDA often uses data visualization methods and statistical methods.

In this section we will continue to work with the Stack Overflow Survey data set as shown in the [previous section](./pages/datascience/dataframes/). To summarize the necessary steps to start with this section, see the Code below:
First of all you of course need to add and load the package:
```julia-repl
julia> using DataFrames

julia> using CSV

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