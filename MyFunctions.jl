#author: Norbert Jaśniewicz
module MyFunctions

  export ilorazyRoznicowe, warNewton

  function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
    if (length(x) != length(f))
      throw(DomainError("x length should be equal to f length"))
    end

    if length(f) == 1
      return copy(f)
    end

    result :: Vector{Float64} = zeros(length(f))
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


end