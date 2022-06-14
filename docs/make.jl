using Documenter

makedocs(
   sitename="Julia Workshop",
   pages = [
      "index.md",
      "Introduction" => "intro/introduction.md",
      "High Performance Computing" => "hpc/hpc.md",
      "Data Science" => "ds/datascience.md"]
   )

deploydocs(
   repo = "git.uibk.ac.at/c7021138/ws22_julia_workshop.git"
)
