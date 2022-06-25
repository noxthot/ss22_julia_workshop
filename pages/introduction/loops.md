@def title = "Loops"
@def hascode = true

@def tags = ["introduction"]

# Loops

@@important
I would like to reuse the result of this example/exercise in the parallel section
@@

\exercise{
For a vector $V\in\mathrm{R}^n$ with elements $v$ compute the sum of all the elements in the following fashion
    
1. Sum over the elements per index:
    $$s_1 = \sum_{i=1}^n v_i$$
2. Sum over the elements (hint `for each`):
    $$s_2 = \sum_{v\in V} v$$
3. Transform these loops into functions
4. Test against `V = rand(100_000)` and `mysum1(V) ≈ mysum2(s_2)` (use `\approx + TAB` for ≈)
    
Extra: Check the `@inbounds` macro for the first version.

\solution{
```julia
function mysum1(V)
    s = zero(eltype(V))
    for i in eachindex(V)
        s += V[i]
    end
    return s
end

function mysum2(V)
    s = zero(eltype(V))
    for v in V
        s += v
    end
    return s
end

V = rand(100_000)
mysum1(V) ≈ mysum2(V)
```
}
}