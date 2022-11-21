# 274 methods for generic function "+":
[1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:87
[2] +(x::T, y::T) where T<:Union{Float16, Float32, Float64} in Base at float.jl:383
[3] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt) in Base.GMP at gmp.jl:531
[4] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt) in Base.GMP at gmp.jl:537
[5] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat) in Base.MPFR at mpfr.jl:398
[6] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat) in Base.MPFR at mpfr.jl:406
[7] +(c::Union{Float16, Float32, Float64}, x::BigFloat) in Base.MPFR at mpfr.jl:414
[8] +(x::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:378
[9] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ}) in Colors at /home/runner/.julia/packages/Colors/yDxFN/src/algorithms.jl:4
[10] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[11] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[12] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[13] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[14] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1446
[15] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[16] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[17] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[18] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[19] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[20] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[21] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[22] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[23] +(A::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[24] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[25] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[26] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[27] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[28] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[29] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[30] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[31] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1423
[32] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[33] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[34] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[35] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[36] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[37] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[38] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[39] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[40] +(x::Rational, y::Integer) in Base at rational.jl:313
[41] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[42] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[43] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[44] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[45] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[46] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[47] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[48] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[49] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[50] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[51] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[52] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[53] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[54] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[55] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[56] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[57] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[58] +(D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[59] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[60] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[61] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[62] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[63] +(A::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[64] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1392
[65] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[66] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[67] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[68] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[69] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[70] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[71] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[72] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[73] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[74] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[75] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[76] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1430
[77] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1439
[78] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[79] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[80] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[81] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[82] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[83] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[84] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[85] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[86] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[87] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[88] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[89] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[90] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[91] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[92] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[93] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[94] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[95] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[96] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[97] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[98] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[99] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[100] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[101] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[102] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[103] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[104] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[105] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[106] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[107] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[108] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[109] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[110] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[111] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[112] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[113] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[114] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[115] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[116] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[117] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[118] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[119] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[120] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[121] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[122] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[123] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[124] +(A::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[125] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[126] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[127] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[128] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:741
[129] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[130] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[131] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[132] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[133] +(A::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[134] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[135] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[136] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[137] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[138] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[139] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[140] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[141] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s885", S} where {var"#s885"<:Real, S<:(AbstractMatrix{<:var"#s885"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[142] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[143] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[144] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[145] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:77
[146] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:367
[147] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:369
[148] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:85
[149] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:63
[150] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:14
[151] +(z::Complex, w::Complex) in Base at complex.jl:288
[152] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[153] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[154] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:207
[155] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:485
[156] +(A::LinearAlgebra.SymTridiagonal{var"#s883", V} where {var"#s883"<:Real, V<:AbstractVector{var"#s883"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:487
[157] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[158] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:157
[159] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:171
[160] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:225
[161] +(A::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:243
[162] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[163] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[164] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[165] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[166] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[167] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[168] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[169] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[170] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[171] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[172] +(A::Array, Bs::Array...) in Base at arraymath.jl:12
[173] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:62
[174] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1833
[175] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:55
[176] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:10
[177] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:6
[178] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[179] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[180] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/versionweights.jl:22
[181] +(x::Bool) in Base at bool.jl:159
[182] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[183] +(y::Integer, x::Rational) in Base at rational.jl:320
[184] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[185] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[186] +(x::Bool, y::Bool) in Base at bool.jl:162
[187] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[188] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[189] +(x::Bool, z::Complex) in Base at complex.jl:306
[190] +(x::Real, z::Complex) in Base at complex.jl:325
[191] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[192] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[193] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[194] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[195] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[196] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[197] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:368
[198] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:398
[199] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:370
[200] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[201] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[202] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[203] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[204] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[205] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[206] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[207] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[208] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
[209] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[210] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[211] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[212] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[213] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[214] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[215] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[216] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[217] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[218] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[219] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[220] +(::Missing) in Base at missing.jl:101
[221] +(::Missing, ::Number) in Base at missing.jl:123
[222] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[223] +(::Missing, ::Missing) in Base at missing.jl:122
[224] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[225] +(z::Complex, x::Bool) in Base at complex.jl:307
[226] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[227] +(z::Complex) in Base at complex.jl:286
[228] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:294
[229] +(::Number, ::Missing) in Base at missing.jl:124
[230] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:145
[231] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[232] +(z::Complex, x::Real) in Base at complex.jl:326
[233] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[234] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[235] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[236] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[237] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[238] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[239] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[240] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[241] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[242] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[243] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[244] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[245] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[246] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[247] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[248] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[249] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[250] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[251] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[252] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[253] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[254] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[255] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[256] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[257] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[258] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[259] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[260] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[261] +(a::Integer, b::Integer) in Base at int.jl:987
[262] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[263] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:922
[264] +(x::Rational) in Base at rational.jl:270
[265] +(x::Rational, y::Rational) in Base at rational.jl:284
[266] +(x::Number) in Base at operators.jl:528
[267] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
[268] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[269] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[270] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[271] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[272] +(x::T, y::T) where T<:Number in Base at promotion.jl:463
[273] +(x::Number, y::Number) in Base at promotion.jl:388
[274] +(a, b, c, xs...) in Base at operators.jl:591