#author: Norbert Jaśniewicz
module MyFunctions
  import Plots
  export ilorazyRoznicowe, warNewton, rysujNnfx

  function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
    if (length(x) != length(f))
      throw(DomainError("x length should be equal to f length"))
    end

    if length(f) == 1
      return copy(f)
    end
    result::Vector{Float64} = zeros(length(f))
    result[1] = f[1]

    iteration = 1
    currentF::Vector{Float64} = copy(f)

    while length(currentF) > 1
      temp::Vector{Float64} = zeros(length(currentF) - 1)
      for i in 1:(length(temp))
        temp[i] = (currentF[i + 1] - currentF[i]) / (x[i + iteration] - x[i])
      end
      iteration += 1
      result[iteration] = temp[1]
      currentF = temp
    end

    return result
  end

  function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
    result::Float64 = last(fx)
    index = length(fx) - 1
    while index > 0
      result = fx[index] + (t - x[index]) * result
      index -= 1
      println("siema")
    end

    return result
  end

  function rysujNnfx(f, a::Float64, b::Float64, n::Int)
    h::Float64 = (b - a) / n
    args::Vector{Float64} = [a + h * i for i in 0:n]
    fVals::Vector{Float64} = map(f, args)
    quotients::Vector{Float64} = ilorazyRoznicowe(args, fVals)
    interVals::Vector{Float64} = map((x) -> warNewton(args, quotients, x))
    fig = Plots.plot(f, a, b, title="Wykresy", label=["f"])
    Plots.plot!(args, interVals, label=["Interpolation"])
    display(fig)

  end

end