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
[16] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[17] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[18] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[19] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[20] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[21] +(D::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Real, V<:AbstractVector{var"#s884"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[22] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[23] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[24] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[25] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[26] +(A::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[27] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[28] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[29] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[30] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[31] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[32] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[33] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[34] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[35] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[36] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[37] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[38] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[39] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[40] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[41] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[42] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[43] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[44] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[45] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[46] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[47] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[48] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[49] +(A::LinearAlgebra.Symmetric{var"#s883", S} where {var"#s883"<:Real, S<:(AbstractMatrix{<:var"#s883"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[50] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[51] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[52] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[53] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[54] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[55] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[56] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[57] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[58] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[59] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[60] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[61] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[62] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[63] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[64] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[65] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[66] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[67] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[68] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[69] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[70] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[71] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[72] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[73] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[74] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[75] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[76] +(A::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[77] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[78] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[79] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[80] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[81] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[82] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[83] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[84] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1447
[85] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1424
[86] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:738
[87] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[88] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[89] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[90] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[91] +(A::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[92] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[93] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[94] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[95] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[96] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[97] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[98] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[99] +(x::Rational, y::Integer) in Base at rational.jl:313
[100] +(A::Array, Bs::Array...) in Base at arraymath.jl:12
[101] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:62
[102] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1833
[103] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:55
[104] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:10
[105] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:207
[106] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:485
[107] +(A::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:487
[108] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[109] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:157
[110] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:171
[111] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:225
[112] +(A::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:243
[113] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[114] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[115] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[116] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[117] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[118] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[119] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[120] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s881", V} where {var"#s881"<:Real, V<:AbstractVector{var"#s881"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[121] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Real, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[122] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[123] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[124] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[125] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[126] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[127] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[128] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[129] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1384
[130] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[131] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[132] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[133] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[134] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[135] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[136] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[137] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[138] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[139] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[140] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[141] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[142] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[143] +(z::Complex, w::Complex) in Base at complex.jl:288
[144] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[145] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[146] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[147] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[148] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[149] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[150] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[151] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[152] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1431
[153] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1440
[154] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[155] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[156] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[157] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[158] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[159] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[160] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[161] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[162] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[163] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:6
[164] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[165] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[166] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[167] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[168] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[169] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[170] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[171] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[172] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[173] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[174] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[175] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[176] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[177] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[178] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[179] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[180] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[181] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[182] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[183] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[184] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[185] +(x::Bool) in Base at bool.jl:159
[186] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[187] +(y::Integer, x::Rational) in Base at rational.jl:320
[188] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[189] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[190] +(x::Bool, y::Bool) in Base at bool.jl:162
[191] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[192] +(x::Bool, z::Complex) in Base at complex.jl:306
[193] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:368
[194] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:398
[195] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:370
[196] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:918
[197] +(x::Rational) in Base at rational.jl:270
[198] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[199] +(x::Real, z::Complex) in Base at complex.jl:325
[200] +(x::Rational, y::Rational) in Base at rational.jl:284
[201] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[202] +(z::Complex, x::Bool) in Base at complex.jl:307
[203] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[204] +(z::Complex) in Base at complex.jl:286
[205] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:294
[206] +(::Number, ::Missing) in Base at missing.jl:124
[207] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:145
[208] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[209] +(z::Complex, x::Real) in Base at complex.jl:326
[210] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[211] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[212] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[213] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[214] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[215] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[216] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[217] +(a::Integer, b::Integer) in Base at int.jl:987
[218] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[219] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[220] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[221] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[222] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[223] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[224] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[225] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[226] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[227] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[228] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[229] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[230] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
[231] +(::Missing) in Base at missing.jl:101
[232] +(::Missing, ::Number) in Base at missing.jl:123
[233] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[234] +(::Missing, ::Missing) in Base at missing.jl:122
[235] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[236] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[237] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[238] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[239] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[240] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[241] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[242] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[243] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[244] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[245] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[246] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[247] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[248] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[249] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[250] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[251] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[252] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[253] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[254] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[255] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[256] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
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