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
[10] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T} in Base at twiceprecision.jl:644
[11] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S} in Base at range.jl:1446
[12] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[13] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[14] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[15] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[16] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[17] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[18] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[19] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[20] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[21] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[22] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[23] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[24] +(A::LinearAlgebra.Symmetric{var"#s884", S} where {var"#s884"<:Real, S<:(AbstractMatrix{<:var"#s884"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[25] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[26] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[27] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[28] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[29] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[30] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[31] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
[32] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[33] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1829
[34] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:1832
[35] +(A::SparseArrays.AbstractSparseMatrixCSC, J::LinearAlgebra.UniformScaling) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsematrix.jl:3821
[36] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[37] +(r1::OrdinalRange, r2::OrdinalRange) in Base at range.jl:1423
[38] +(A::BitArray, B::BitArray) in Base at bitarray.jl:1184
[39] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[40] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[41] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[42] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[43] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[44] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[45] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[46] +(x::Rational, y::Integer) in Base at rational.jl:313
[47] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[48] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[49] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[50] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[51] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[52] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[53] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[54] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[55] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[56] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[57] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[58] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[59] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[60] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[61] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:184
[62] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:188
[63] +(D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}, H::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:194
[64] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[65] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:137
[66] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:147
[67] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:175
[68] +(A::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:253
[69] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1392
[70] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[71] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[72] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[73] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[74] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[75] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[76] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[77] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[78] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[79] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[80] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[81] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1430
[82] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen}) in Base at range.jl:1439
[83] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[84] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[85] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[86] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[87] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
[88] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[89] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[90] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[91] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[92] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[93] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[94] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[95] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[96] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[97] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[98] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[99] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[100] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[101] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[102] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[103] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[104] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[105] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[106] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[107] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[108] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[109] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[110] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[111] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[112] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[113] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[114] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[115] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[116] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[117] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[118] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[119] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[120] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[121] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[122] +(A::LinearAlgebra.Bidiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[123] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[124] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[125] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[126] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:741
[127] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[128] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:169
[129] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:185
[130] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:205
[131] +(A::LinearAlgebra.Tridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:238
[132] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[133] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s882", V} where {var"#s882"<:Real, V<:AbstractVector{var"#s882"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:488
[134] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s885", V} where {var"#s885"<:Real, V<:AbstractVector{var"#s885"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:197
[135] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:195
[136] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[137] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[138] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:26
[139] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s885", S} where {var"#s885"<:Real, S<:(AbstractMatrix{<:var"#s885"})}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:483
[140] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:24
[141] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[142] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[143] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[144] +(x::P, y::P) where P<:Dates.Period in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:77
[145] +(x::Dates.Period, y::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:367
[146] +(y::Dates.Period, x::Dates.CompoundPeriod) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/periods.jl:369
[147] +(y::Dates.Period, x::Dates.TimeType) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:85
[148] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:63
[149] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:14
[150] +(z::Complex, w::Complex) in Base at complex.jl:288
[151] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[152] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[153] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[154] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
[155] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/tridiag.jl:207
[156] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:485
[157] +(A::LinearAlgebra.SymTridiagonal{var"#s883", V} where {var"#s883"<:Real, V<:AbstractVector{var"#s883"}}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:487
[158] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[159] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:157
[160] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:171
[161] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:225
[162] +(A::LinearAlgebra.SymTridiagonal{var"#s885", V} where {var"#s885"<:Number, V<:AbstractVector{var"#s885"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.3/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:243
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
[206] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[207] +(::ChainRulesCore.NoTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
[208] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:73
[209] +(::ChainRulesCore.NoTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:53
[210] +(::ChainRulesCore.NoTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[211] +(::ChainRulesCore.NoTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:59
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
[242] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.MPFR at mpfr.jl:393
[243] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8}) in Base.MPFR at mpfr.jl:401
[244] +(x::BigFloat, c::Union{Float16, Float32, Float64}) in Base.MPFR at mpfr.jl:409
[245] +(x::BigFloat, y::BigFloat) in Base.MPFR at mpfr.jl:386
[246] +(x::BigFloat, c::BigInt) in Base.MPFR at mpfr.jl:417
[247] +(a::BigFloat, b::BigFloat, c::BigFloat) in Base.MPFR at mpfr.jl:558
[248] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat) in Base.MPFR at mpfr.jl:564
[249] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat) in Base.MPFR at mpfr.jl:571
[250] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[251] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[252] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[253] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[254] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[255] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[256] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[257] +(a::Integer, b::Integer) in Base at int.jl:987
[258] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
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