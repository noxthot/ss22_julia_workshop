# This file was generated, do not modify it. # hide
a32 = rand(Float32, length(a)*2)
println("\nBuilt in sum(FLOAT64) = ", sum(a))
@btime sum($a32)
println("\nBuild in sum(FLOAT32) = ", sum(a32))
@btime sum($a32)