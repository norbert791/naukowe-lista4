#author: Norbert Jaśniewicz

include("MyFunctions.jl")
using .MyFunctions

function main()
  MyFunctions.rysujNnfx(x -> x^2, 0.0, 1.0, 4)
end

main()