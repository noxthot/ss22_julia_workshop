CodeInfo(
1 ─ %1  = Main.FD_SANDBOX_7871368165756690798.eltype(a)::Core.Const(Int64)
│         (result = Main.FD_SANDBOX_7871368165756690798.zero(%1))::Core.Const(0)
│   %3  = Main.FD_SANDBOX_7871368165756690798.eachindex(a)::Base.OneTo{Int64}
│         (@_3 = Base.iterate(%3))::Union{Nothing, Tuple{Int64, Int64}}
│   %5  = (@_3 === nothing)::Bool
│   %6  = Base.not_int(%5)::Bool
└──       goto #4 if not %6
2 ┄ %8  = @_3::Tuple{Int64, Int64}
│         (i = Core.getfield(%8, 1))::Int64
│   %10 = Core.getfield(%8, 2)::Int64
│         $(Expr(:inbounds, true))::Any
│   %12 = result::Int64
│   %13 = Base.getindex(a, i)::Int64
│   %14 = (%12 + %13)::Int64
│         (result = %14)::Int64
│         (val = %14)::Int64
│         $(Expr(:inbounds, :pop))::Any
│         val::Int64
│         (@_3 = Base.iterate(%3, %10))::Union{Nothing, Tuple{Int64, Int64}}
│   %20 = (@_3 === nothing)::Bool
│   %21 = Base.not_int(%20)::Bool
└──       goto #4 if not %21
3 ─       goto #2
4 ┄       return result
) => Int64