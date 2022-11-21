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
[10] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[11] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[12] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1446
[13] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[14] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[15] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[16] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[17] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[18] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[19] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[20] +(A::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[21] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[22] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[23] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[24] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[25] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[26] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[27] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[28] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[29] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[30] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[31] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[32] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[33] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1423
[34] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[35] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[36] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[37] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[38] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[39] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[40] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[41] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[42] +(x::Rational, y::Integer) in Base at rational.jl:313
[43] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[44] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[45] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[46] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[47] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[48] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[49] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[50] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[51] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[52] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[53] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[54] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[55] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[56] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[57] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[58] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[59] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[60] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[61] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[62] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[63] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[64] +(D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[65] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[66] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[67] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[68] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[69] +(A::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[70] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1392
[71] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[72] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[73] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[74] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[75] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[76] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[77] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[78] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[79] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[80] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[81] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1430
[82] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1439
[83] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[84] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[85] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[86] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[87] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[88] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[89] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[90] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[91] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[92] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[93] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[94] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[95] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[96] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[97] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[98] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[99] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[100] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[101] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[102] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[103] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[104] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[105] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[106] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[107] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[108] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[109] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[110] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[111] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[112] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[113] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[114] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[115] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[116] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[117] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[118] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[119] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[120] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[121] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[122] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[123] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[124] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[125] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[126] +(A::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[127] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[128] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[129] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[130] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:741
[131] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[132] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[133] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[134] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[135] +(A::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[136] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[137] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[138] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[139] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[140] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[141] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[142] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[143] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s885", S} where {var"#s885"<:Real, S<:(AbstractMatrix{<:var"#s885"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[144] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[145] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[146] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:77
[147] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:367
[148] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:369
[149] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:85
[150] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:63
[151] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:14
[152] +(z::Complex, w::Complex) in Base at complex.jl:288
[153] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
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
[178] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:922
[179] +(x::Rational) in Base at rational.jl:270
[180] +(x::Rational, y::Rational) in Base at rational.jl:284
[181] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[182] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/versionweights.jl:22
[183] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[184] +(x::Bool) in Base at bool.jl:159
[185] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[186] +(y::Integer, x::Rational) in Base at rational.jl:320
[187] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[188] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[189] +(x::Bool, y::Bool) in Base at bool.jl:162
[190] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[191] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[192] +(x::Bool, z::Complex) in Base at complex.jl:306
[193] +(x::Real, z::Complex) in Base at complex.jl:325
[194] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:368
[195] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:398
[196] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:370
[197] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[198] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[199] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[200] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[201] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[202] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[203] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[204] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[205] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
[206] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[207] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[208] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[209] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[210] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[211] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[212] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[213] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[214] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[215] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[216] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[217] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[218] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[219] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[220] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[221] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[222] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[223] +(::Missing) in Base at missing.jl:101
[224] +(::Missing, ::Number) in Base at missing.jl:123
[225] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[226] +(::Missing, ::Missing) in Base at missing.jl:122
[227] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[228] +(z::Complex, x::Bool) in Base at complex.jl:307
[229] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[230] +(z::Complex) in Base at complex.jl:286
[231] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:294
[232] +(::Number, ::Missing) in Base at missing.jl:124
[233] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:145
[234] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[235] +(z::Complex, x::Real) in Base at complex.jl:326
[236] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[237] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[238] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[239] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[240] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[241] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[242] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[243] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[244] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[245] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[246] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[247] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[248] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[249] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[250] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[251] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[252] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[253] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[254] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[255] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[256] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[257] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[258] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[259] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[260] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[261] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[262] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[263] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[264] +(a::Integer, b::Integer) in Base at int.jl:987
[265] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[266] +(x::Number) in Base at operators.jl:528
[267] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
[268] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[269] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[270] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[271] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[272] +(x::T, y::T) where T<:Number in Base at promotion.jl:463
[273] +(x::Number, y::Number) in Base at promotion.jl:388
[274] +(a, b, c, xs...) in Base at operators.jl:591