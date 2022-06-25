# This file was generated, do not modify it. # hide
function mysimdsum(a)
    result = zero(eltype(a))
    @simd for i in eachindex(a)
        @inbounds result += a[i]
    end
    return result
end

function mysum2(V)
    s = zero(eltype(V))
    for v in V
        s += v
    end
    return s
end

function mysimdsum2(V)
    s = zero(eltype(V))
    @simd for v in V
        s += v
    end
    return s
end

println("\nSimple mysum(a) = ", mysum(a))
@btime mysum($a)
println("\nBuilt in sum(a) = ", sum(a))
@btime sum($a)
println("\nSimple mysimdsum = ", mysimdsum(a))
@btime mysimdsum($a)
println("\nSimple mysum2 = ", mysum2(a))
@btime mysum2($a)
println("\nSimple mysimdsum2 = ", mysimdsum2(a))
@btime mysimdsum2($a)