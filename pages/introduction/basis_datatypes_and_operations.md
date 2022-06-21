@def title = "Basic Datatypes and Basic Operations"
@def hascode = true

@def tags = ["introduction"]

# Basic Datatypes and Basic Operations

## Variables

A variable is a name that is bound to a value and is used to store a value for later use. See the following examples:
```julia-repl
julia> x = 5
5

julia> y = -3
-3

julia> z = 2.5
2.5

julia> s = "O Romeo, Romeo"
"O Romeo, Romeo"

julia> greekText = "Στυπιδ Ρ"
"Στυπιδ Ρ"
```

## Datatypes

Julia supports basic data types like Integers, Floating-Point Numbers, [Strings and many more](https://docs.julialang.org/en/v1/manual/types/). The most generic type is called `Any` and thus every type is a subtype of `Any`. Types are built in a hierarchical manner and can be visualized as a type graph (examples for partial type graphs are given in [Wikibooks - Introducing Julia](https://en.wikibooks.org/wiki/Introducing_Julia/Types)).

Although Julia's type system is dynamic, it also allows to explicitly set a specific type for certain values and thus also gains advantages of static type systems.

In the following we will briefly look into some basic data types and the operations defined on them. 

### Numeric types

Integers and Floating-Point Numbers are the building blocks for arithmetic and computational operations. They are both subtypes of the more general type `Real` and come in different primitive numeric types:
- Integer types:
Type     | Signed   | Number of bits
-------- | -------- | --------
Int8     | Yes      | 8
UInt8    | No       | 8
Int16    | Yes      | 16
UInt16   | No       | 16
Int32    | Yes      | 32
UInt32   | No       | 32
Int64    | Yes      | 64
UInt64   | No       | 64
Int128   | Yes      | 128
UInt128  | No       | 128
Bool     | N/A      | 8

- Floating-point types:
Type     | Precision | Number of bits
-------- | --------- | --------
Float16  | half      | 16
Float32  | single    | 32
Float64  | double    | 64

Additionally, Julia also offers support for Complex and Rational Numbers. The according types are given by e.g. `Complex{Int64}` and `Rational{Int64}`. On a side note, there is also support for [arbitrary precision arithmetic](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/#Arbitrary-Precision-Arithmetic) and of course you are also able to define your [own types](https://docs.julialang.org/en/v1/manual/types/#Primitive-Types).

The type hierarchy can be investigated with the commands `subtypes()` and `supertype()`:
```julia-repl
julia> supertype(Complex{Int64})
Number

julia> subtypes(Number)
2-element Vector{Any}:
 Complex
 Real

julia> subtypes(Real)
4-element Vector{Any}:
 AbstractFloat
 AbstractIrrational
 Integer
 Rational
```

There is also a command for checking the type of a value or variable:
```julia-repl
julia> typeof(10)
Int64

julia> typeof(2.5)
Float64

julia> typeof(2im)
Complex{Int64}

julia> typeof(3//5)
Rational{Int64}
```

And with `::` it is possible to explicitly specify the type of a value or variable:
```julia-repl
julia> 10.0::Float64
10.0

julia> true::Bool
true

julia> local x::Int32 = 10
10

julia> local y::Int64 = 10
10

julia> x + y
8

julia> typeof(x + y)
Int64
```

You may ask yourself: Why is this important when Julia is dynamically typed and thus not requires types to be explicitly set? Among others, there are three primary purposes for using types: improve human readability, catch programmer errors and for making use of a concept called multiple dispatch (which we will talk about later in this workshop). It may also get important when high precision, memory constraints or fast computation is required.

For now we did not speak about basic mathematical operations which are of course defined for all primitive numeric types. `+` corresponds to addition, `-` to subtraction, `*` to multiplication, `/` to division, `÷` for integer division and `x ^ y` raises `x` to the `y`th power:
```julia-repl
julia> x = 3 + 2im
3 + 2im

julia> y = 5.2
5.2

julia> x + y
8.2 + 2.0im

julia> x - y
-2.2 + 2.0im

julia> x * y
15.600000000000001 + 10.4im

julia> x / y
0.5769230769230769 + 0.3846153846153846im

julia> y ÷ 3    # to type ÷, simply enter \div followed by tab
1.0

julia> x ^ y
-784.728604218539 + 66.05617374305294im
```

Julia of course also deals with brackets and chained operations:
```julia-repl
julia> 1 + 5 * (3 - 2.1) + (2 ^ 5)
37.5
```

`Bool` types are designed to build logical expressions and only carry two possible values `true` (`1`) and `false` (`0`). They offer the following Boolean operators: `!x` (negation), `x && y` (logical AND), `x || y` (logical OR). Note that `Bool` is still an integer type and and thus all the numerical operations are also defined for this type:
```julia-repl
julia> true && false
false

julia> false * 532
0

julia> true * 532
532

julia> true || false
true

julia> (true && false) || !true
false
```

Integer types additionally offer [bitwise operators](https://docs.julialang.org/en/v1/manual/mathematical-operations/#Bitwise-Operators) which will not be discussed in this workshop.


### Characters and Strings

Strings are finite sequences of characters. But what is a character? Julia's built-in concrete type used for strings is `String` and this type supports the whole range of [Unicode](https://www.unicode.org/versions/latest/) characters via UTF-8 encoding. Possible characters include latin and greek letters, aswell as emoji and many many [more](https://www.unicode.org/charts/).

A single character can be stored as a `Char` type using single quotation marks `''` while a `String` type uses double quotation marks `""`:
```julia-repl
julia> x = 'α'
'α': Unicode U+03B1 (category Ll: Letter, lowercase)

julia> y = "α"
"α"

julia> z = "αγ"
"αγ"

julia> cantdo = 'αγ'
ERROR: syntax: character literal contains multiple characters
Stacktrace:
 [1] top-level scope
   @ none:1
```

And Julia even supports the use of Unicode as variable names which for example allows to use the same notation as the one used for scientific work. To add some Unicode math symbol, type the backslashed $\LaTeX$ symbol name followed by a tab. E.g. `\alpha` turns into `α`:
```julia-repl
julia> α = 10
10

julia> β = 20
20

julia> γ = α + β
30
```

We bet you are now curious about adding some emojis to spice up your code. In a similar manner we use `\:smile_cat:` followed by a tab to get 😸. To view the list of all the available emojis simply type `\:` followed by a tab in your REPL. Here is an emoji example which demonstrates why you can not compare apples and pears (spoiler: they are of different types):
```julia-repl
julia> 🍎 = "nobody likes me"
"nobody likes me"

julia> 🍐 = 'Ω'
'Ω': Unicode U+03A9 (category Lu: Letter, uppercase)

julia> 🍎 > 🍐
ERROR: MethodError: no method matching isless(::Char, ::String)
```

Since strings are sequences, they also allow indexing (note that indexing in Julia starts with `1`):
```julia-repl
julia> mytext = "I am a String"
"I am a String"

julia> mytext[1]
'I': ASCII/Unicode U+0049 (category Lu: Letter, uppercase)

julia> mytext[8]
'S': ASCII/Unicode U+0053 (category Lu: Letter, uppercase)
```

Common operations on strings are e.g. `a * b` for concatenating two strings `a` and `b`, `length(a)` to get the number of characters of a string `a`, `occursin(a, b)` to find out whether `a` is a substring of `b` and [more](https://docs.julialang.org/en/v1/manual/strings/#Common-Operations):
```julia-repl
julia> mystring = "Mathematik"
"Mathematik"

julia> mystring = "julialang"
"julialang"

julia> mystring * " is my favourite language"
"julialang is my favourite language"

julia> length(mystring)
9

julia> occursin("alan", mystring)
true
```