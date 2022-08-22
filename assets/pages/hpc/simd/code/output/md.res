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
[33] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[34] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[35] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[36] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[37] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[38] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[39] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[40] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s881", V} where {var"#s881"<:Real, V<:AbstractVector{var"#s881"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[41] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Real, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[42] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[43] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[44] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[45] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[46] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[47] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[48] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[49] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[50] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[51] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[52] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[53] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[54] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[55] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[56] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[57] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[58] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[59] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[60] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[61] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[62] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[63] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[64] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[65] +(z::Complex, w::Complex) in Base at complex.jl:288
[66] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[67] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[68] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[69] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[70] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[71] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[72] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[73] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[74] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[75] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[76] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[77] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[78] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1384
[79] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[80] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[81] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[82] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[83] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[84] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[85] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[86] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[87] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[88] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[89] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[90] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[91] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[92] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[93] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[94] +(A::LinearAlgebra.Symmetric{var"#s883", S} where {var"#s883"<:Real, S<:(AbstractMatrix{<:var"#s883"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[95] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[96] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1431
[97] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[98] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[99] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[100] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[101] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[102] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[103] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[104] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[105] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[106] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[107] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[108] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[109] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[110] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[111] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[112] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[113] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[114] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[115] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[116] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[117] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[118] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[119] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[120] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[121] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[122] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[123] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[124] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[125] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[126] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[127] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[128] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[129] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[130] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[131] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[132] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[133] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[134] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[135] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[136] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[137] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[138] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[139] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[140] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[141] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[142] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[143] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[144] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[145] +(A::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[146] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[147] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[148] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[149] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[150] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[151] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[152] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[153] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[154] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[155] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[156] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1447
[157] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1424
[158] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1440
[159] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:738
[160] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[161] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[162] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[163] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[164] +(A::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[165] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[166] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[167] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[168] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[169] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[170] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[171] +(x::Rational, y::Integer) in Base at rational.jl:313
[172] +(A::Array, Bs::Array...) in Base at arraymath.jl:12
[173] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:62
[174] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1833
[175] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:55
[176] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:10
[177] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:6
[178] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[179] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[180] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[181] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[182] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[183] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[184] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
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
[220] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[221] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[222] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[223] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[224] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[225] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
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
[238] +(::Missing) in Base at missing.jl:101
[239] +(::Missing, ::Number) in Base at missing.jl:123
[240] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[241] +(::Missing, ::Missing) in Base at missing.jl:122
[242] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[243] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[244] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[245] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[246] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[247] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[248] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[249] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[250] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/versionweights.jl:22
[251] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[252] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[253] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[254] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[255] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[256] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[257] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[258] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[259] +(x::Number) in Base at operators.jl:528
[260] +(x::T, y::T) where T<:Number in Base at promotion.jl:463
[261] +(x::Number, y::Number) in Base at promotion.jl:388
[262] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[263] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[264] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[265] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[266] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[267] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[268] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[269] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
[270] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[271] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[272] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[273] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[274] +(a, b, c, xs...) in Base at operators.jl:591