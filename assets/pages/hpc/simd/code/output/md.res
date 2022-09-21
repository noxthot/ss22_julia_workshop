# 274 methods for generic function "+":
[1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:87
[2] +(x::T, y::T) where T<:Union{Float16, Float32, Float64} in Base at float.jl:383
[3] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt) in Base.GMP at gmp.jl:531
[4] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt) in Base.GMP at gmp.jl:537
[5] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat) in Base.MPFR at mpfr.jl:398
[6] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat) in Base.MPFR at mpfr.jl:406
[7] +(c::Union{Float16, Float32, Float64}, x::BigFloat) in Base.MPFR at mpfr.jl:414
[8] +(x::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:378
[9] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ}) in Colors at /home/runner/.julia/packages/Colors/yDxFN/src/algorithms.jl:4
[10] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[11] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[12] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[13] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[14] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1447
[15] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[16] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[17] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[18] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[19] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[20] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[21] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[22] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[23] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[24] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[25] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[26] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[27] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[28] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[29] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[30] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[31] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[32] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[33] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[34] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[35] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[36] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[37] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[38] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[39] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1424
[40] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[41] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[42] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[43] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1431
[44] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1440
[45] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[46] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[47] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[48] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[49] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[50] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[51] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[52] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[53] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[54] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[55] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[56] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[57] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[58] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[59] +(A::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[60] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[61] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:77
[62] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:367
[63] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:369
[64] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:85
[65] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:63
[66] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:14
[67] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[68] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[69] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[70] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:207
[71] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:485
[72] +(A::LinearAlgebra.SymTridiagonal{var"#s883", V} where {var"#s883"<:Real, V<:AbstractVector{var"#s883"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:487
[73] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[74] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:157
[75] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:171
[76] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:225
[77] +(A::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:243
[78] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[79] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[80] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[81] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[82] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[83] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[84] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[85] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[86] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[87] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[88] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[89] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[90] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[91] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[92] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[93] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[94] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[95] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[96] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[97] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[98] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[99] +(A::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[100] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[101] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[102] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[103] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[104] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[105] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[106] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[107] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[108] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:741
[109] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[110] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[111] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[112] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[113] +(A::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[114] +(z::Complex, w::Complex) in Base at complex.jl:288
[115] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[116] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[117] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[118] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[119] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[120] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[121] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[122] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[123] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[124] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[125] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[126] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[127] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[128] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[129] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[130] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[131] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[132] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[133] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[134] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[135] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[136] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s885", S} where {var"#s885"<:Real, S<:(AbstractMatrix{<:var"#s885"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[137] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[138] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[139] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[140] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[141] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[142] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[143] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[144] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[145] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[146] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[147] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[148] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[149] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[150] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[151] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[152] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[153] +(D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[154] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[155] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[156] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[157] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[158] +(A::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[159] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[160] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[161] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[162] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[163] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[164] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[165] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[166] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[167] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[168] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1384
[169] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[170] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[171] +(x::Rational, y::Integer) in Base at rational.jl:313
[172] +(A::Array, Bs::Array...) in Base at arraymath.jl:12
[173] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:62
[174] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1833
[175] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:55
[176] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:10
[177] +(A::AbstractArray, B::AbstractArray) in Base at arraymath.jl:6
[178] +(x::Bool) in Base at bool.jl:159
[179] +(x::Integer, y::Ptr) in Base at pointer.jl:161
[180] +(y::Integer, x::Rational) in Base at rational.jl:320
[181] +(x::Integer, y::AbstractChar) in Base at char.jl:247
[182] +(x::Number, y::Base.TwicePrecision) in Base at twiceprecision.jl:294
[183] +(::Number, ::Missing) in Base at missing.jl:124
[184] +(x::Number, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:145
[185] +(a::Number, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:339
[186] +(x::Bool, y::T) where T<:AbstractFloat in Base at bool.jl:169
[187] +(x::Bool, y::Bool) in Base at bool.jl:162
[188] +(x::Bool, z::Complex{Bool}) in Base at complex.jl:299
[189] +(x::Bool, z::Complex) in Base at complex.jl:306
[190] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[191] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[192] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[193] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[194] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[195] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[196] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[197] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[198] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[199] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[200] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[201] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[202] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[203] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[204] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[205] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[206] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[207] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[208] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[209] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[210] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[211] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[212] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[213] +(level::Base.CoreLogging.LogLevel, inc::Integer) in Base.CoreLogging at logging.jl:131
[214] +(::Missing) in Base at missing.jl:101
[215] +(::Missing, ::Number) in Base at missing.jl:123
[216] +(x::Missing, y::Dates.AbstractTime) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:89
[217] +(::Missing, ::Missing) in Base at missing.jl:122
[218] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[219] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[220] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[221] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[222] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[223] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[224] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[225] +(a::Integer, b::Integer) in Base at int.jl:987
[226] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[227] +(z::Complex{Bool}, x::Bool) in Base at complex.jl:300
[228] +(z::Complex, x::Bool) in Base at complex.jl:307
[229] +(z::Complex{Bool}, x::Real) in Base at complex.jl:314
[230] +(z::Complex) in Base at complex.jl:286
[231] +(z::Complex, x::Real) in Base at complex.jl:326
[232] +(x::Rational{BigInt}, y::Rational{BigInt}) in Base.GMP.MPQ at gmp.jl:918
[233] +(x::Rational) in Base at rational.jl:270
[234] +(x::Real, z::Complex{Bool}) in Base at complex.jl:313
[235] +(x::Real, z::Complex) in Base at complex.jl:325
[236] +(x::Rational, y::Rational) in Base at rational.jl:284
[237] +(x::Number) in Base at operators.jl:528
[238] +(x::T, y::T) where T<:Number in Base at promotion.jl:463
[239] +(x::Number, y::Number) in Base at promotion.jl:388
[240] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[241] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[242] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
[243] +(dt::Dates.DateTime, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:23
[244] +(dt::Dates.DateTime, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:47
[245] +(x::Dates.DateTime, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:75
[246] +(x::Dates.DateTime, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:81
[247] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[248] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[249] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[250] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[251] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[252] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[253] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[254] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/versionweights.jl:22
[255] +(x::Dates.CompoundPeriod, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:368
[256] +(x::Dates.CompoundPeriod, y::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:398
[257] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:370
[258] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[259] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[260] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[261] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[262] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[263] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[264] +(x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:8
[265] +(a::P, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:133
[266] +(a, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[267] +(a, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[268] +(a, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[269] +(::Any, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[270] +(x::Dates.AbstractTime, y::Missing) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:88
[271] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:389
[272] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:390
[273] +(x::Dates.TimeType, y::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.1/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:392
[274] +(a, b, c, xs...) in Base at operators.jl:591