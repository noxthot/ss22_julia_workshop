# 276 methods for generic function "+":
[1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:87
[2] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt) in Base.GMP at gmp.jl:529
[3] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt) in Base.GMP at gmp.jl:535
[4] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat) in Base.MPFR at mpfr.jl:397
[5] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat) in Base.MPFR at mpfr.jl:405
[6] +(c::Union{Float16, Float32, Float64}, x::BigFloat) in Base.MPFR at mpfr.jl:413
[7] +(x::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:372
[8] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ}) in Colors at /home/runner/.julia/packages/Colors/yDxFN/src/algorithms.jl:4
[9] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:640
[10] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[11] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[12] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[13] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[14] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[15] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[16] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[17] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:613
[18] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1370
[19] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[20] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[21] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:150
[22] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:145
[23] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:151
[24] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:153
[25] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[26] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:641
[27] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:245
[28] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:250
[29] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:255
[30] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:260
[31] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:30
[32] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:154
[33] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:172
[34] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:176
[35] +(D::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Real, V<:AbstractVector{var"#s861"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:182
[36] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[37] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:125
[38] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:135
[39] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:163
[40] +(A::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:241
[41] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:640
[42] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:642
[43] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:182
[44] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[45] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[46] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[47] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:279
[48] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:285
[49] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:290
[50] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[51] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/bidiag.jl:354
[52] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[53] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[54] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[55] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[56] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:94
[57] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:115
[58] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:183
[59] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:203
[60] +(A::LinearAlgebra.Bidiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:236
[61] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:79
[62] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:361
[63] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:363
[64] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:85
[65] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/ranges.jl:62
[66] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:14
[67] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/oPGFg/src/expint.jl:11
[68] +(A::Array, Bs::Array...) in Base at arraymath.jl:43
[69] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:62
[70] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1775
[71] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:55
[72] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:10
[73] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:4
[74] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1771
[75] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:1774
[76] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsematrix.jl:3754
[77] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:641
[78] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:643
[79] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:182
[80] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[81] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:636
[82] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:638
[83] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[84] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[85] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1180
[86] +(z::Complex, w::Complex) in Base at complex.jl:288
[87] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[88] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[89] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[90] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1354
[91] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/E2187/src/layouts.jl:19
[92] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[93] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[94] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[95] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[96] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:129
[97] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:123
[98] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[99] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[100] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[101] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:146
[102] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:99
[103] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[104] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[105] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[106] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[107] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[108] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[109] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:106
[110] +(x::Rational, y::Integer) in Base at rational.jl:311
[111] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/tridiag.jl:740
[112] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[113] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:157
[114] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:173
[115] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:193
[116] +(A::LinearAlgebra.Tridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:226
[117] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:122
[118] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:119
[119] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[120] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[121] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[122] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:122
[123] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/ranges.jl:63
[124] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/tridiag.jl:208
[125] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:485
[126] +(A::LinearAlgebra.SymTridiagonal{var"#s859", V} where {var"#s859"<:Real, V<:AbstractVector{var"#s859"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:487
[127] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/hessenberg.jl:107
[128] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:145
[129] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:159
[130] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:213
[131] +(A::LinearAlgebra.SymTridiagonal{var"#s861", V} where {var"#s861"<:Number, V<:AbstractVector{var"#s861"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:231
[132] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[133] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:637
[134] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:639
[135] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/triangular.jl:644
[136] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/special.jl:86
[137] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:469
[138] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:486
[139] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:179
[140] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:15
[141] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:18
[142] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:25
[143] +(A::LinearAlgebra.Symmetric{var"#s860", S} where {var"#s860"<:Real, S<:(AbstractMatrix{<:var"#s860"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:484
[144] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:23
[145] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/sparsevector.jl:1355
[146] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:14
[147] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:17
[148] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:14
[149] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:17
[150] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:469
[151] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s858", V} where {var"#s858"<:Real, V<:AbstractVector{var"#s858"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:488
[152] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s861", V} where {var"#s861"<:Real, V<:AbstractVector{var"#s861"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/diagonal.jl:185
[153] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:196
[154] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:15
[155] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:18
[156] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:26
[157] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s861", S} where {var"#s861"<:Real, S<:(AbstractMatrix{<:var"#s861"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/symmetric.jl:483
[158] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/SparseArrays/src/linalg.jl:24
[159] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:18
[160] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:145
[161] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1347
[162] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1363
[163] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:29
[164] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:7
[165] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/deprecated.jl:6
[166] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:12
[167] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:13
[168] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/5bAMi/src/linalg.jl:14
[169] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:37
[170] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[171] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[172] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[173] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[174] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[175] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[176] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[177] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Pkg/src/Resolve/versionweights.jl:22
[178] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:362
[179] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:392
[180] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:364
[181] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:392
[182] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:400
[183] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:408
[184] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:385
[185] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:416
[186] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:557
[187] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:563
[188] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:570
[189] +(::Missing) in Base at missing.jl:101
[190] +(::Missing, ::Number) in Base at missing.jl:123
[191] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:89
[192] +(::Missing, ::Missing) in Base at missing.jl:122
[193] +(x::Bool) in Base at bool.jl:159
[194] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[195] +(y::Integer, x::Rational) in Base at rational.jl:318
[196] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[197] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[198] +(x::Bool, y::Bool) in Base at bool.jl:162
[199] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[200] +(x::Bool, z::Complex) in Base at complex.jl:306
[201] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[202] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[203] +(z::Complex, x::Bool) in Base at complex.jl:307
[204] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[205] +(z::Complex) in Base at complex.jl:286
[206] +(z::Complex, x::Real) in Base at complex.jl:326
[207] +(x::Float64, y::Float64) in Base at float.jl:399
[208] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:885
[209] +(x::Rational) in Base at rational.jl:268
[210] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[211] +(x::Real, z::Complex) in Base at complex.jl:325
[212] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:283
[213] +(::Number, ::Missing) in Base at missing.jl:124
[214] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:146
[215] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[216] +(x::Rational, y::Rational) in Base at rational.jl:282
[217] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[218] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[219] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:73
[220] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:53
[221] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[222] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:59
[223] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[224] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[225] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:93
[226] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:74
[227] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[228] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:99
[229] +(x::Float16, y::Float16) in Base at float.jl:397
[230] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:528
[231] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:534
[232] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:480
[233] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:520
[234] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:521
[235] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:522
[236] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:635
[237] +(a::Integer, b::Integer) in Base at int.jl:978
[238] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:421
[239] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[240] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[241] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[242] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[243] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:19
[244] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:24
[245] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_types/abstract_tangent.jl:38
[246] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:152
[247] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/LinearAlgebra/src/uniformscaling.jl:215
[248] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:104
[249] +(x::Float32, y::Float32) in Base at float.jl:398
[250] +(x::Number) in Base at operators.jl:592
[251] +(x::T, y::T) where T<:Number in Base at promotion.jl:454
[252] +(x::Number, y::Number) in Base at promotion.jl:379
[253] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:19
[254] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:27
[255] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:54
[256] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:73
[257] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:77
[258] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:79
[259] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:83
[260] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:20
[261] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Pkg/src/Resolve/fieldvalues.jl:43
[262] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:23
[263] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:47
[264] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:75
[265] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:81
[266] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:8
[267] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:133
[268] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:123
[269] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:100
[270] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:60
[271] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/16PWJ/src/tangent_arithmetic.jl:25
[272] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/arithmetic.jl:88
[273] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:383
[274] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:384
[275] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.7.3/x64/share/julia/stdlib/v1.7/Dates/src/periods.jl:386
[276] +(a, b, c, xs...) in Base at operators.jl:655