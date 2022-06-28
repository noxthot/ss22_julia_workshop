# This file was generated, do not modify it. # hide
using InteractiveUtils

@code_llvm mysum(a)
printstyled("\n------Separator-------\n\n"; color = :red)
@code_llvm mysimdsum(a)