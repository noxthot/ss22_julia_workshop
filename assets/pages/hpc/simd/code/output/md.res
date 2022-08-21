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
[33] +(x::GeometryBasics.OffsetInteger{O}, y::GeometryBasics.OffsetInteger{O}) where O in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/offsetintegers.jl:63
[34] +(x::Dates.Instant) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:4
[35] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:18
[36] +(a::Dict, d::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:145
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
[49] +(x::T, y::Integer) where T<:AbstractChar in Base at char.jl:237
[50] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N in Base.IteratorsMD at multidimensional.jl:114
[51] +(a::Measures.Length{U}, b::Measures.Length{U}) where U in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/length.jl:28
[52] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:29
[53] +(a::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:7
[54] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:12
[55] +(a::AbstractArray, b::StaticArraysCore.StaticArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:13
[56] +(a::StaticArraysCore.StaticArray, b::AbstractArray) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:14
[57] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/ranges.jl:64
[58] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period}) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/deprecated.jl:6
[59] +(z::Complex, w::Complex) in Base at complex.jl:288
[60] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:639
[61] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:641
[62] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[63] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:21
[64] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/point.jl:15
[65] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/sparsevector.jl:1384
[66] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[67] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[68] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:14
[69] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:17
[70] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[71] +(a::ChainRulesCore.AbstractThunk, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:119
[72] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[73] +(a::ChainRulesCore.AbstractThunk, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[74] +(::ChainRulesCore.AbstractThunk, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[75] +(a::ChainRulesCore.AbstractThunk, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:122
[76] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:642
[77] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:644
[78] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[79] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[80] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[81] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:469
[82] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:486
[83] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/diagonal.jl:191
[84] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:15
[85] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:18
[86] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:25
[87] +(A::LinearAlgebra.Symmetric{var"#s883", S} where {var"#s883"<:Real, S<:(AbstractMatrix{<:var"#s883"})}, B::LinearAlgebra.Hermitian) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/symmetric.jl:484
[88] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}) in SparseArrays at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/SparseArrays/src/linalg.jl:23
[89] +(r1::LinRange{T}, r2::LinRange{T}) where T in Base at range.jl:1431
[90] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:641
[91] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint in FixedPointNumbers at /home/runner/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
[92] +(a::Measures.Measure, b::Measures.Measure) in Measures at /home/runner/.julia/packages/Measures/0Zkai/src/operations.jl:41
[93] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:101
[94] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[95] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[96] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[97] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[98] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[99] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[100] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:108
[101] +(a::ColorTypes.AbstractGray{Bool}, b::Bool) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:338
[102] +(a::ColorTypes.AbstractGray{Bool}, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:337
[103] +(a::ColorTypes.AbstractGray, b::Number) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:336
[104] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:643
[105] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:645
[106] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:181
[107] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[108] +(x::Base.TwicePrecision, y::Number) in Base at twiceprecision.jl:290
[109] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T in Base at twiceprecision.jl:296
[110] +(x::Base.TwicePrecision, y::Base.TwicePrecision) in Base at twiceprecision.jl:301
[111] +(J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:149
[112] +(J::LinearAlgebra.UniformScaling, x::Number) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:144
[113] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:150
[114] +(J::LinearAlgebra.UniformScaling, B::BitMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:152
[115] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[116] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:642
[117] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:257
[118] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:262
[119] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:267
[120] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:272
[121] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}) in StaticArrays at /home/runner/.julia/packages/StaticArrays/dcWsT/src/linalg.jl:30
[122] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:153
[123] +(x::Ptr, y::Integer) in Base at pointer.jl:159
[124] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:638
[125] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:640
[126] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/triangular.jl:646
[127] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[128] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:98
[129] +(x::AbstractIrrational, y::AbstractIrrational) in Base at irrationals.jl:158
[130] +(y::AbstractFloat, x::Bool) in Base at bool.jl:172
[131] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox) in Plots at /home/runner/.julia/packages/Plots/OeNV1/src/layouts.jl:19
[132] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T} in SpecialFunctions at /home/runner/.julia/packages/SpecialFunctions/hefUc/src/expint.jl:11
[133] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/bidiag.jl:365
[134] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/hessenberg.jl:109
[135] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[136] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[137] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[138] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:106
[139] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:127
[140] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:195
[141] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:215
[142] +(A::LinearAlgebra.Bidiagonal{var"#s884", V} where {var"#s884"<:Number, V<:AbstractVector{var"#s884"}}, B::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/special.jl:248
[143] +(a::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:427
[144] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:429
[145] +(h::GeometryBasics.HyperRectangle{N, T}, move::StaticArraysCore.StaticArray{Tuple{N}, T, 1} where T) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:273
[146] +(h::GeometryBasics.HyperRectangle{N, T}, move::Number) where {N, T} in GeometryBasics at /home/runner/.julia/packages/GeometryBasics/3PqdK/src/primitives/rectangles.jl:267
[147] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:328
[148] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:279
[149] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:255
[150] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:277
[151] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:327
[152] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:254
[153] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:326
[154] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}) in ColorVectorSpace at /home/runner/.julia/packages/ColorVectorSpace/bhkoO/src/ColorVectorSpace.jl:265
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
[165] +(a::ChainRulesCore.Tangent{P}, b::ChainRulesCore.Tangent{P}) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:129
[166] +(a::ChainRulesCore.Tangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:123
[167] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:100
[168] +(a::ChainRulesCore.Tangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:60
[169] +(::ChainRulesCore.Tangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[170] +(a::ChainRulesCore.Tangent{P}, b::P) where P in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:146
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
[211] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[212] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[213] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[214] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[215] +(x::ChainRulesCore.NotImplemented, ::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:19
[216] +(x::ChainRulesCore.NotImplemented, ::Any) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:24
[217] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8}) in Base.GMP at gmp.jl:530
[218] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8}) in Base.GMP at gmp.jl:536
[219] +(x::BigInt, y::BigInt) in Base.GMP at gmp.jl:482
[220] +(a::BigInt, b::BigInt, c::BigInt) in Base.GMP at gmp.jl:522
[221] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt) in Base.GMP at gmp.jl:523
[222] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt) in Base.GMP at gmp.jl:524
[223] +(x::BigInt, y::BigInt, rest::BigInt...) in Base.GMP at gmp.jl:657
[224] +(a::Integer, b::Integer) in Base at int.jl:987
[225] +(c::BigInt, x::BigFloat) in Base.MPFR at mpfr.jl:422
[226] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.Tangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[227] +(::ChainRulesCore.ZeroTangent, b::ChainRulesCore.AbstractThunk) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[228] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.ZeroTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:93
[229] +(::ChainRulesCore.ZeroTangent, ::ChainRulesCore.NoTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:74
[230] +(::ChainRulesCore.ZeroTangent, x::ChainRulesCore.NotImplemented) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:25
[231] +(::ChainRulesCore.ZeroTangent, b) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_arithmetic.jl:99
[232] +(x::ChainRulesCore.AbstractTangent) in ChainRulesCore at /home/runner/.julia/packages/ChainRulesCore/ctmSK/src/tangent_types/abstract_tangent.jl:38
[233] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue) in Pkg.Resolve at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Pkg/src/Resolve/fieldvalues.jl:43
[234] +(x::Dates.Time, y::Dates.TimePeriod) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:83
[235] +(t::Dates.Time, dt::Dates.Date) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:20
[236] +(dt::Dates.Date, t::Dates.Time) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:19
[237] +(dt::Dates.Date, y::Dates.Year) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:27
[238] +(dt::Dates.Date, z::Dates.Month) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:54
[239] +(x::Dates.Date, y::Dates.Quarter) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:73
[240] +(x::Dates.Date, y::Dates.Week) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:77
[241] +(x::Dates.Date, y::Dates.Day) in Dates at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/Dates/src/arithmetic.jl:79
[242] +(B::BitMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:151
[243] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling) in LinearAlgebra at /opt/hostedtoolcache/julia/1.8.0/x64/share/julia/stdlib/v1.8/LinearAlgebra/src/uniformscaling.jl:214
[244] +(x::AbstractArray{<:Number}) in Base at abstractarraymath.jl:220
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