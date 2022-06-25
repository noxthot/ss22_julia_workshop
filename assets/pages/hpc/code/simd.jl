# This file was generated, do not modify it. # hide
println("\nSimple sum:")
@btime mysum($a)
println("\nBuilt in sum:")
@btime sum($a)