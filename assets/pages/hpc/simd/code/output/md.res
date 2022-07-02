# 344 methods for generic function "+":
[1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:87
[2] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt) in Base.GMP at gmp.jl:529
[3] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt) in Base.GMP at gmp.jl:535
[4] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat) in Base.MPFR at mpfr.jl:397
[5] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat) in Base.MPFR at mpfr.jl:405
[6] +(c::Union{Float16, Float32, Float64}, x::BigFloat) in Base.MPFR at mpfr.jl:413
[7] +(x::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:372
[8] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ}) in Colors at /home/runner/.julia/packages/Colors/yDxFN/src/algorithms.jl:4
[9] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:640
[10] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:29
[11] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:7
[12] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:12
[13] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:14
[14] +(d::Distributions.Normal, c::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/continuous/normal.jl:99
[15] +(a::FillArrays.Fill{T, 1}, b::AbstractRange) where T in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:200
[16] +(a::SentinelArrays.ChainedVectorIndex, b::SentinelArrays.ChainedVectorIndex) in SentinelArrays at /home/runner/.julia/packages/SentinelArrays/EQtMp/src/chainedvector.jl:208
[17] +(a::SentinelArrays.ChainedVectorIndex, b::Integer) in SentinelArrays at /home/runner/.julia/packages/SentinelArrays/EQtMp/src/chainedvector.jl:206
[18] +(a::PDMats.ScalMat, b::PDMats.PDSparseMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:29
[19] +(a::PDMats.ScalMat, b::PDMats.ScalMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:27
[20] +(a::PDMats.ScalMat, b::PDMats.PDiagMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:26
[21] +(a::PDMats.ScalMat, b::PDMats.PDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:25
[22] +(a::PDMats.ScalMat, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:6
[23] +(d::Distributions.Cauchy, c::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/continuous/cauchy.jl:104
[24] +(a::FillArrays.Zeros{T, 1}, b::UnitRange) where T in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:251
[25] +(a::FillArrays.Zeros{T, 1}, b::AbstractRange) where T in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:246
[26] +(a::FillArrays.Zeros) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:207
[27] +(a::FillArrays.Zeros{T}, b::FillArrays.Zeros{V}) where {T, V} in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:211
[28] +(a::FillArrays.Zeros, b::FillArrays.AbstractFill) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:223
[29] +(a::FillArrays.Zeros{T, N}, b::AbstractArray{V, N}) where {T, V, N} in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:228
[30] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[31] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:613
[32] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1370
[33] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[34] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[35] +(d::Distributions.NormalCanon, c::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/continuous/normalcanon.jl:94
[36] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:150
[37] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:145
[38] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:151
[39] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:153
[40] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[41] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:641
[42] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:245
[43] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:250
[44] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:255
[45] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:260
[46] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:30
[47] +(a::LinearAlgebra.UniformScaling, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:43
[48] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:154
[49] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:172
[50] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:176
[51] +(D::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Real, V<:AbstractVector{var"#s861"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:182
[52] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[53] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:125
[54] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:135
[55] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:163
[56] +(A::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:241
[57] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:640
[58] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:642
[59] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:182
[60] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[61] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[62] +(a::FillArrays.RectDiagonal, b::LinearAlgebra.UniformScaling) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:363
[63] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[64] +(x::Ratios.SimpleRatio, y::Ratios.SimpleRatio) in Ratios at /home/runner/.julia/packages/Ratios/jmhFy/src/Ratios.jl:72
[65] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:279
[66] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:285
[67] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:290
[68] +(a::PDMats.PDiagMat, b::PDMats.PDSparseMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:22
[69] +(a::PDMats.PDiagMat, b::PDMats.ScalMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:20
[70] +(a::PDMats.PDiagMat, b::PDMats.PDiagMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:19
[71] +(a::PDMats.PDiagMat, b::PDMats.PDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:18
[72] +(a::PDMats.PDiagMat, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:5
[73] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[74] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[75] +(d::Distributions.Laplace, c::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/continuous/laplace.jl:117
[76] +(a::PDMats.AbstractPDMat, b::LinearAlgebra.UniformScaling) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:42
[77] +(a::PDMats.AbstractPDMat, b::Matrix) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/generics.jl:14
[78] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[79] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[80] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/bidiag.jl:354
[81] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[82] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[83] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[84] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[85] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[86] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:115
[87] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:183
[88] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:203
[89] +(A::LinearAlgebra.Bidiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:236
[90] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[91] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[92] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[93] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[94] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[95] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[96] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[97] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[98] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:79
[99] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:361
[100] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:363
[101] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:85
[102] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/ranges.jl:62
[103] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:14
[104] +(d::Distributions.MvNormal, c::AbstractVector) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/multivariate/mvnormal.jl:294
[105] +(a::FillArrays.AbstractFill{<:Any, 2}, b::LinearAlgebra.UniformScaling) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:208
[106] +(a::FillArrays.AbstractFill) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:190
[107] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:13
[108] +(M::AbstractMatrix, W::WoodburyMatrices.AbstractWoodbury) in WoodburyMatrices at /home/runner/.julia/packages/WoodburyMatrices/zexu7/src/WoodburyMatrices.jl:104
[109] +(c::AbstractVector, d::Distributions.MvNormal) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/multivariate/mvnormal.jl:295
[110] +(a::FillArrays.AbstractFill{T}, b::FillArrays.Zeros{V}) where {T, V} in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:219
[111] +(a::FillArrays.AbstractFill{T, N}, b::FillArrays.AbstractFill{V, N}) where {T, V, N} in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:194
[112] +(A::Array, Bs::Array...) in Base at arraymath.jl:43
[113] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:62
[114] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1775
[115] +(a::Matrix, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/generics.jl:13
[116] +(a::Array{T, N}, b::FillArrays.Zeros{V, N}) where {T, V, N} in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:232
[117] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:55
[118] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:10
[119] +(x::DataValues.DataValue{T}) where T<:Number in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/core.jl:203
[120] +(x::DataValues.DataValue{T1}, y::T2) where {T1<:Number, T2<:Number} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/core.jl:212
[121] +(a::DataValues.DataValue{T1}, b::DataValues.DataValue{T2}) where {T1<:Number, T2<:Number} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/core.jl:211
[122] +(a::DataValues.DataValue{T1}, b::DataValues.DataValue{T2}) where {T1, T2} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/operations.jl:55
[123] +(a::DataValues.DataValue{T1}, b::T2) where {T1, T2} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/operations.jl:65
[124] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:4
[125] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[126] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[127] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/E2187/src/layouts.jl:19
[128] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:129
[129] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:123
[130] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[131] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[132] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[133] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:146
[134] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1771
[135] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1774
[136] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:3754
[137] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:641
[138] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:643
[139] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:182
[140] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[141] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:636
[142] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:638
[143] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[144] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[145] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1180
[146] +(z::Complex, w::Complex) in Base at complex.jl:288
[147] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1354
[148] +(d::Distributions.Uniform, c::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/continuous/uniform.jl:115
[149] +(d::Distributions.UnivariateDistribution, x::Real) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/locationscale.jl:142
[150] +(W::WoodburyMatrices.Woodbury, M::AbstractMatrix) in WoodburyMatrices at /home/runner/.julia/packages/WoodburyMatrices/zexu7/src/woodbury.jl:86
[151] +(W::WoodburyMatrices.Woodbury, X::WoodburyMatrices.Woodbury) in WoodburyMatrices at /home/runner/.julia/packages/WoodburyMatrices/zexu7/src/woodbury.jl:83
[152] +(z::DualNumbers.Dual, w::DualNumbers.Dual) in DualNumbers at /home/runner/.julia/packages/DualNumbers/5knFX/src/dual.jl:233
[153] +(z::DualNumbers.Dual, w::Number) in DualNumbers at /home/runner/.julia/packages/DualNumbers/5knFX/src/dual.jl:235
[154] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:99
[155] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[156] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[157] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[158] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[159] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[160] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[161] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[162] +(x::Rational, y::Integer) in Base at rational.jl:311
[163] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/tridiag.jl:740
[164] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[165] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:157
[166] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:173
[167] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:193
[168] +(A::LinearAlgebra.Tridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:226
[169] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[170] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[171] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/ranges.jl:63
[172] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:6
[173] +(a::AbstractRange, b::FillArrays.Zeros) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/fillalgebra.jl:244
[174] +(a::AbstractRange, b::FillArrays.AbstractFill) in FillArrays at /home/runner/.julia/packages/FillArrays/5Arin/src/FillArrays.jl:205
[175] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/tridiag.jl:208
[176] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:485
[177] +(A::LinearAlgebra.SymTridiagonal{var"#s859", V} where {var"#s859"<:Real, V<:AbstractVector{var"#s859"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:487
[178] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[179] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:145
[180] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:159
[181] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:213
[182] +(A::LinearAlgebra.SymTridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:231
[183] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[184] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:637
[185] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:639
[186] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:644
[187] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[188] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:469
[189] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:486
[190] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:179
[191] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:15
[192] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:18
[193] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:25
[194] +(A::LinearAlgebra.Symmetric{var"#s860", S} where {var"#s860"<:Real, S<:(AbstractMatrix{<:var"#s860"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:484
[195] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:23
[196] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsevector.jl:1355
[197] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:14
[198] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:17
[199] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:14
[200] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:17
[201] +(O::WoodburyMatrices.SymWoodbury, M::AbstractMatrix) in WoodburyMatrices at /home/runner/.julia/packages/WoodburyMatrices/zexu7/src/symwoodbury.jl:115
[202] +(O::WoodburyMatrices.SymWoodbury, M::WoodburyMatrices.SymWoodbury) in WoodburyMatrices at /home/runner/.julia/packages/WoodburyMatrices/zexu7/src/symwoodbury.jl:112
[203] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:469
[204] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s858", V} where {var"#s858"<:Real, V<:AbstractVector{var"#s858"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:488
[205] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Real, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:185
[206] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:196
[207] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:15
[208] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:18
[209] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:26
[210] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s861", S} where {var"#s861"<:Real, S<:(AbstractMatrix{<:var"#s861"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:483
[211] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:24
[212] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:18
[213] +(a::PDMats.PDSparseMat, b::PDMats.PDSparseMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:36
[214] +(a::PDMats.PDSparseMat, b::PDMats.ScalMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:35
[215] +(a::PDMats.PDSparseMat, b::PDMats.PDiagMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:34
[216] +(a::PDMats.PDSparseMat, b::PDMats.PDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:33
[217] +(a::PDMats.PDSparseMat, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:8
[218] +(a::PDMats.PDMat, b::PDMats.PDSparseMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:15
[219] +(a::PDMats.PDMat, b::PDMats.ScalMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:13
[220] +(a::PDMats.PDMat, b::PDMats.PDiagMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:12
[221] +(a::PDMats.PDMat, b::PDMats.PDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:11
[222] +(a::PDMats.PDMat, b::PDMats.AbstractPDMat) in PDMats at /home/runner/.julia/packages/PDMats/IvI3p/src/addition.jl:4
[223] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:145
[224] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[225] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[226] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[227] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[228] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[229] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1347
[230] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1363
[231] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:37
[232] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:122
[233] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:119
[234] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[235] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[236] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[237] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:122
[238] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/oPGFg/src/expint.jl:11
[239] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Pkg/src/Resolve/versionweights.jl:22
[240] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:362
[241] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:392
[242] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:364
[243] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:392
[244] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:400
[245] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:408
[246] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:385
[247] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:416
[248] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:557
[249] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:563
[250] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:570
[251] +(::Missing) in Base at missing.jl:101
[252] +(::Missing, ::Number) in Base at missing.jl:123
[253] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:89
[254] +(::Missing, ::Missing) in Base at missing.jl:122
[255] +(x::Bool) in Base at bool.jl:159
[256] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[257] +(y::Integer, x::Rational) in Base at rational.jl:318
[258] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[259] +(a::Integer, b::SentinelArrays.ChainedVectorIndex) in SentinelArrays at /home/runner/.julia/packages/SentinelArrays/EQtMp/src/chainedvector.jl:207
[260] +(x::Integer, y::Ratios.SimpleRatio) in Ratios at /home/runner/.julia/packages/Ratios/jmhFy/src/Ratios.jl:70
[261] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[262] +(x::Bool, y::Bool) in Base at bool.jl:162
[263] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[264] +(x::Bool, z::Complex) in Base at complex.jl:306
[265] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[266] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[267] +(z::Complex, x::Bool) in Base at complex.jl:307
[268] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[269] +(z::Complex) in Base at complex.jl:286
[270] +(z::Complex, x::Real) in Base at complex.jl:326
[271] +(x::Float64, y::Float64) in Base at float.jl:399
[272] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:885
[273] +(x::Rational) in Base at rational.jl:268
[274] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[275] +(x::Real, z::Complex) in Base at complex.jl:325
[276] +(x::Real, d::Distributions.UnivariateDistribution) in Distributions at /home/runner/.julia/packages/Distributions/EZkyd/src/univariate/locationscale.jl:143
[277] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:283
[278] +(::Number, ::Missing) in Base at missing.jl:124
[279] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:146
[280] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[281] +(z::Number, w::DualNumbers.Dual) in DualNumbers at /home/runner/.julia/packages/DualNumbers/5knFX/src/dual.jl:234
[282] +(x::T1, y::DataValues.DataValue{T2}) where {T1<:Number, T2<:Number} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/core.jl:213
[283] +(x::Rational, y::Rational) in Base at rational.jl:282
[284] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[285] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[286] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:73
[287] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:53
[288] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[289] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[290] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[291] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[292] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:93
[293] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:74
[294] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[295] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[296] +(x::Float16, y::Float16) in Base at float.jl:397
[297] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:528
[298] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:534
[299] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:480
[300] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:520
[301] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:521
[302] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:522
[303] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:635
[304] +(a::Integer, b::Integer) in Base at int.jl:978
[305] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:421
[306] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[307] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[308] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[309] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[310] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:19
[311] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[312] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_types/abstract_tangent.jl:38
[313] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:152
[314] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:215
[315] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:104
[316] +(x::Float32, y::Float32) in Base at float.jl:398
[317] +(x::Number) in Base at operators.jl:592
[318] +(x::T, y::T) where T<:Number in Base at promotion.jl:454
[319] +(x::Number, y::Number) in Base at promotion.jl:379
[320] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:19
[321] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:27
[322] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:54
[323] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:73
[324] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:77
[325] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:79
[326] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:83
[327] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:20
[328] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Pkg/src/Resolve/fieldvalues.jl:43
[329] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:23
[330] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:47
[331] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:75
[332] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:81
[333] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:8
[334] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:133
[335] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:123
[336] +(a::T1, b::DataValues.DataValue{T2}) where {T1, T2} in DataValues at /home/runner/.julia/packages/DataValues/N7oeL/src/scalar/operations.jl:75
[337] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[338] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[339] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[340] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:88
[341] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:383
[342] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:384
[343] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:386
[344] +(a, b, c, xs...) in Base at operators.jl:655