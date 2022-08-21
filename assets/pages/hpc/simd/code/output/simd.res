CodeInfo(
1 ─ %1  = Main.FD_SANDBOX_1113260776286120926.eltype(a)::Core.Const(Float64)
│         (result = Main.FD_SANDBOX_1113260776286120926.zero(%1))::Core.Const(0.0)
│   %3  = Main.FD_SANDBOX_1113260776286120926.eachindex(a)::Base.OneTo{Int64}
│         (@_3 = Base.iterate(%3))::Union{Nothing, Tuple{Int64, Int64}}
│   %5  = (@_3 === nothing)::Bool
│   %6  = Base.not_int(%5)::Bool
└──       goto #4 if not %6
2 ┄ %8  = @_3::Tuple{Int64, Int64}
│         (i = Core.getfield(%8, 1))::Int64
│   %10 = Core.getfield(%8, 2)::Int64
│         nothing::Core.Const(nothing)
│   %12 = result::Float64
│   %13 = Base.getindex(a, i)::Float64
│   %14 = (%12 + %13)::Float64
│         (result = %14)::Float64
│         (val = %14)::Float64
│         nothing::Core.Const(nothing)
│         val::Float64
│         (@_3 = Base.iterate(%3, %10))::Union{Nothing, Tuple{Int64, Int64}}
│   %20 = (@_3 === nothing)::Bool
│   %21 = Base.not_int(%20)::Bool
└──       goto #4 if not %21
3 ─       goto #2
4 ┄       return result
) => Float64