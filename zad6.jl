#author: Norbert Jaśniewicz

include("MyFunctions.jl")
using .MyFunctions

function main()
  for i in [5, 10, 15]
    MyFunctions.rysujNnfx(abs, -1.0, 1.0, i)
  end

  for i in [5, 10, 15]
    MyFunctions.rysujNnfx(x -> 1/(1 + x^2), -5.0, 5.0, i)
  end
end

main()