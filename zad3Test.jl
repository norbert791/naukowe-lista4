include("MyFunctions.jl")
import Polynomials
using .MyFunctions

function main()
  arg1::Vector{Float64} = [1.0, 2.0, 3.0]
  arg2::Vector{Float64} = [1.0, 4.0, 9.0]
  coefss = MyFunctions.naturalna(arg1, arg2)
  println(coefss)
end

main()