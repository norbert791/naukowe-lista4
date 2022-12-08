include("MyFunctions.jl")
using .MyFunctions


function main()
  arg1::Vector{Float64} = [3.0, 1.0, 5.0, 6.0]
  arg2::Vector{Float64} = [1.0, -3.0, 2.0, 4.0]
  res = MyFunctions.ilorazyRoznicowe(arg1, arg2)
  println(res)
  arg1 = [3.0]
  arg2 = [1.0]
  res = MyFunctions.ilorazyRoznicowe(arg1, arg2)
  println(res)
end

main()