#author: Norbert Jaśniewicz

include("MyFunctions.jl")
using .MyFunctions

function main()
  for i in [5, 10, 15]
    MyFunctions.rysujNnfx(exp, 0.0, 1.0, i)
    t = readline()
  end

  for i in [5, 10, 15]
    MyFunctions.rysujNnfx(x -> (x^2)*sin(x), -1.0, 1.0, i)
    t = readline()
  end

end

main()