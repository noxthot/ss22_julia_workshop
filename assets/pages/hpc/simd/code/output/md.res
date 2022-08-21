# 274 methods for generic function "+":
[1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:87
[2] +(x::T, y::T) where T<:Union{Float16, Float32, Float64} in Base at float.jl:383
[3] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt) in Base.GMP at gmp.jl:531
[4] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt) in Base.GMP at gmp.jl:537
[5] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat) in Base.MPFR at mpfr.jl:398
[6] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat) in Base.MPFR at mpfr.jl:406
[7] +(c::Union{Float16, Float32, Float64}, x::BigFloat) in Base.MPFR at mpfr.jl:414
[8] +(x::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:378
[9] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ}) in Colors at /home/runner/.julia/packages/Colors/yDxFN/src/algorithms.jl:4
[10] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:77
[11] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:367
[12] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:369
[13] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:85
[14] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:63
[15] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:14
[16] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:207
[17] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:485
[18] +(A::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:487
[19] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[20] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:157
[21] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:171
[22] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:225
[23] +(A::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:243
[24] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[25] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[26] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[27] +(D::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Real, V<:AbstractVector{var"#s884"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[28] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[29] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[30] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[31] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[32] +(A::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[33] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[34] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[35] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[36] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[37] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[38] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s881", V} where {var"#s881"<:Real, V<:AbstractVector{var"#s881"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[39] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Real, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[40] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[41] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[42] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[43] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[44] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[45] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[46] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[47] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[48] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[49] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[50] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[51] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[52] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[53] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[54] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[55] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[56] +(z::Complex, w::Complex) in Base at complex.jl:288
[57] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[58] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[59] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[60] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[61] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[62] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[63] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[64] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[65] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[66] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1384
[67] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[68] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[69] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[70] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[71] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[72] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[73] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[74] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[75] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[76] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[77] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[78] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[79] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[80] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[81] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[82] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[83] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[84] +(A::LinearAlgebra.Symmetric{var"#s883", S} where {var"#s883"<:Real, S<:(AbstractMatrix{<:var"#s883"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[85] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[86] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1431
[87] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[88] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[89] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[90] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[91] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[92] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[93] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[94] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[95] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[96] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[97] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[98] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[99] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[100] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[101] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[102] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[103] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[104] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[105] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[106] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[107] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[108] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[109] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[110] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[111] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[112] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[113] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[114] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[115] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[116] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[117] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[118] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[119] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[120] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[121] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[122] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[123] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[124] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[125] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[126] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[127] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[128] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[129] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[130] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[131] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[132] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[133] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[134] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[135] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[136] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[137] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[138] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[139] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[140] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[141] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[142] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[143] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[144] +(A::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[145] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[146] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[147] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[148] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[149] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[150] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[151] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[152] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[153] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[154] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[155] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[156] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[157] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[158] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[159] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[160] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[161] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[162] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1447
[163] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1424
[164] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1440
[165] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:738
[166] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[167] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[168] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[169] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[170] +(A::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[171] +(x::Rational, y::Integer) in Base at rational.jl:313
[172] +(A::Array, Bs::Array...) in Base at arraymath.jl:12
[173] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:62
[174] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1833
[175] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:55
[176] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:10
[177] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:6
[178] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[179] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[180] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[181] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[182] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[183] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[184] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[185] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[186] +(x::Bool) in Base at bool.jl:159
[187] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[188] +(y::Integer, x::Rational) in Base at rational.jl:320
[189] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[190] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[191] +(x::Bool, y::Bool) in Base at bool.jl:162
[192] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[193] +(x::Bool, z::Complex) in Base at complex.jl:306
[194] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:368
[195] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:398
[196] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:370
[197] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:918
[198] +(x::Rational) in Base at rational.jl:270
[199] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[200] +(x::Real, z::Complex) in Base at complex.jl:325
[201] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:294
[202] +(::Number, ::Missing) in Base at missing.jl:124
[203] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:145
[204] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[205] +(x::Rational, y::Rational) in Base at rational.jl:284
[206] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[207] +(z::Complex, x::Bool) in Base at complex.jl:307
[208] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[209] +(z::Complex) in Base at complex.jl:286
[210] +(z::Complex, x::Real) in Base at complex.jl:326
[211] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[212] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[213] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[214] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[215] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[216] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[217] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[218] +(a::Integer, b::Integer) in Base at int.jl:987
[219] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[220] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[221] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[222] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[223] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[224] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[225] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[226] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[227] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[228] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[229] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[230] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[231] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[232] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[233] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[234] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[235] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[236] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[237] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
[238] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[239] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[240] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[241] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[242] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[243] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[244] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[245] +(::Missing) in Base at missing.jl:101
[246] +(::Missing, ::Number) in Base at missing.jl:123
[247] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[248] +(::Missing, ::Missing) in Base at missing.jl:122
[249] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[250] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[251] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[252] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[253] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[254] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[255] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[256] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[257] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/versionweights.jl:22
[258] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[259] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[260] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[261] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[262] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[263] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[264] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[265] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[266] +(x::Number) in Base at operators.jl:528
[267] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
[268] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[269] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[270] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[271] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[272] +(x::T, y::T) where T<:Number in Base at promotion.jl:463
[273] +(x::Number, y::Number) in Base at promotion.jl:388
[274] +(a, b, c, xs...) in Base at operators.jl:591