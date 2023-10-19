# 251 methods for generic function "+" from Base:
   [1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8}
     @ int.jl:87
   [2] +(x::T, y::T) where T<:Union{Float16, Float32, Float64}
     @ float.jl:408
   [3] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt)
     @ Base.GMP gmp.jl:539
   [4] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt)
     @ Base.GMP gmp.jl:545
   [5] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:407
   [6] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:415
   [7] +(c::Union{Float16, Float32, Float64}, x::BigFloat)
     @ Base.MPFR mpfr.jl:423
   [8] +(x::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:342
   [9] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:647
  [10] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
  [11] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
  [12] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
  [13] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
  [14] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
  [15] +(a::ChainRulesCore.Tangent{P}, b::P) where P
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
  [16] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:65
  [17] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:754
  [18] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [19] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:162
  [20] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:178
  [21] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:198
  [22] +(A::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:231
  [23] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
  [24] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
  [25] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
  [26] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
  [27] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:75
  [28] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:331
  [29] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:333
  [30] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:85
  [31] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:64
  [32] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:14
  [33] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:646
  [34] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:648
  [35] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
  [36] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [37] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [38] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/bidiag.jl:374
  [39] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [40] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
  [41] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
  [42] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
  [43] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
  [44] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:120
  [45] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:188
  [46] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:208
  [47] +(A::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:241
  [48] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:647
  [49] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:649
  [50] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
  [51] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [52] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling)
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
  [53] +(a::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
  [54] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:6
  [55] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
  [56] +(a::AbstractArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
  [57] +(a::StaticArraysCore.StaticArray, b::AbstractArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
  [58] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:642
  [59] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:644
  [60] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [61] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [62] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2065
  [63] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsevector.jl:1516
  [64] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2068
  [65] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4098
  [66] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1441
  [67] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
  [68] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:207
  [69] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:485
  [70] +(A::LinearAlgebra.SymTridiagonal{var"#s970", V} where {var"#s970"<:Real, V<:AbstractVector{var"#s970"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:487
  [71] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [72] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:150
  [73] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:164
  [74] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:218
  [75] +(A::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:236
  [76] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
  [77] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [78] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:486
  [79] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:191
  [80] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [81] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [82] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:25
  [83] +(A::LinearAlgebra.Symmetric{var"#s971", S} where {var"#s971"<:Real, S<:(AbstractMatrix{<:var"#s971"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:484
  [84] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:23
  [85] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:4
  [86] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [87] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s969", V} where {var"#s969"<:Real, V<:AbstractVector{var"#s969"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:488
  [88] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:197
  [89] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:195
  [90] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [91] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [92] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:26
  [93] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s972", S} where {var"#s972"<:Real, S<:(AbstractMatrix{<:var"#s972"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:483
  [94] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:24
  [95] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:104
  [96] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [97] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [98] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [99] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [100] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [101] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [102] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [103] +(z::Complex, w::Complex)
     @ complex.jl:291
 [104] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
 [105] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:111
 [106] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
 [107] +(x::Ptr, y::Integer)
     @ pointer.jl:167
 [108] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T}
     @ SpecialFunctions ~/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
 [109] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
 [110] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:184
 [111] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:188
 [112] +(D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:194
 [113] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [114] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:130
 [115] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:140
 [116] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:168
 [117] +(A::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:246
 [118] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1448
 [119] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:643
 [120] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:645
 [121] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:650
 [122] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [123] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
 [124] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
 [125] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
 [126] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
 [127] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
 [128] +(a::ChainRulesCore.AbstractThunk, b)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
 [129] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:149
 [130] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:144
 [131] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:150
 [132] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:152
 [133] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [134] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:648
 [135] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:250
 [136] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:255
 [137] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:260
 [138] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:265
 [139] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4100
 [140] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T})
     @ StaticArrays ~/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
 [141] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:153
 [142] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:290
 [143] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:296
 [144] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:301
 [145] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:18
 [146] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
 [147] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:62
 [148] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2069
 [149] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:55
 [150] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:10
 [151] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:628
 [152] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1464
 [153] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1457
 [154] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [155] +(x::Rational, y::Integer)
     @ rational.jl:327
 [156] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
 [157] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
 [158] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
 [159] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
 [160] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
 [161] +(::ChainRulesCore.NoTangent, b)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
 [162] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/versionweights.jl:22
 [163] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:402
 [164] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:410
 [165] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:418
 [166] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:395
 [167] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:426
 [168] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:567
 [169] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:573
 [170] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:580
 [171] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:19
 [172] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:27
 [173] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:54
 [174] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:73
 [175] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:77
 [176] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:79
 [177] +(x::Bool)
     @ bool.jl:163
 [178] +(x::Integer, y::Ptr)
     @ pointer.jl:169
 [179] +(y::Integer, x::Rational)
     @ rational.jl:334
 [180] +(x::Integer, y::AbstractChar)
     @ char.jl:247
 [181] +(x::Bool, y::T) where T<:AbstractFloat
     @ bool.jl:173
 [182] +(x::Bool, y::Bool)
     @ bool.jl:166
 [183] +(x::Bool, z::Complex{Bool})
     @ complex.jl:302
 [184] +(x::Real, z::Complex{Bool})
     @ complex.jl:316
 [185] +(x::Bool, z::Complex)
     @ complex.jl:309
 [186] +(x::Real, z::Complex)
     @ complex.jl:328
 [187] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
 [188] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
 [189] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
 [190] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
 [191] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
 [192] +(x::ChainRulesCore.NotImplemented, ::Any)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
 [193] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:151
 [194] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:214
 [195] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [196] +(::Missing)
     @ missing.jl:101
 [197] +(::Missing, ::Number)
     @ missing.jl:123
 [198] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:89
 [199] +(::Missing, ::Missing)
     @ missing.jl:122
 [200] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/fieldvalues.jl:43
 [201] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:23
 [202] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:47
 [203] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:75
 [204] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:81
 [205] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:303
 [206] +(z::Complex, x::Bool)
     @ complex.jl:310
 [207] +(z::Complex{Bool}, x::Real)
     @ complex.jl:317
 [208] +(z::Complex)
     @ complex.jl:289
 [209] +(z::Complex, x::Real)
     @ complex.jl:329
 [210] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:332
 [211] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:362
 [212] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:334
 [213] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
 [214] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
 [215] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
 [216] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
 [217] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
 [218] +(::ChainRulesCore.ZeroTangent, b)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
 [219] +(x::ChainRulesCore.AbstractTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
 [220] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:538
 [221] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:544
 [222] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:490
 [223] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:530
 [224] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:531
 [225] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:532
 [226] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:666
 [227] +(a::Integer, b::Integer)
     @ int.jl:1038
 [228] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:431
 [229] +(x::Dates.Time, y::Dates.TimePeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:83
 [230] +(t::Dates.Time, dt::Dates.Date)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:20
 [231] +(x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:8
 [232] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:88
 [233] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:353
 [234] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:354
 [235] +(x::Dates.TimeType, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:356
 [236] +(x::Rational{BigInt}, y::Rational{BigInt})
     @ Base.GMP.MPQ gmp.jl:1027
 [237] +(x::Rational)
     @ rational.jl:284
 [238] +(x::Number, y::Base.TwicePrecision)
     @ twiceprecision.jl:294
 [239] +(::Number, ::Missing)
     @ missing.jl:124
 [240] +(x::Number, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:145
 [241] +(x::Rational, y::Rational)
     @ rational.jl:298
 [242] +(x::Number)
     @ operators.jl:515
 [243] +(a::P, d::ChainRulesCore.Tangent{P}) where P
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
 [244] +(a, b::ChainRulesCore.AbstractThunk)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
 [245] +(a, ::ChainRulesCore.ZeroTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
 [246] +(a, ::ChainRulesCore.NoTangent)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
 [247] +(::Any, x::ChainRulesCore.NotImplemented)
     @ ChainRulesCore ~/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
 [248] +(x::T, y::T) where T<:Number
     @ promotion.jl:485
 [249] +(x::Number, y::Number)
     @ promotion.jl:410
 [250] +(level::Base.CoreLogging.LogLevel, inc::Integer)
     @ Base.CoreLogging logging.jl:131
 [251] +(a, b, c, xs...)
     @ operators.jl:578