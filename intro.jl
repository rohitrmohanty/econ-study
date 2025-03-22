using LinearAlgebra, Statistics, Plots, LaTeXStrings

@show randn()

n = 100
ep = randn(n)
white_noise = plot(1:n, ep)

# @show ep
@show typeof(ep)

display(white_noise)

# You can use eachindex(variable) for returning a vector of indices 
# You can use variable[a:b] inside the for loop to get the value at the indices between and including a and b
ep_sum = 0.0
m = 5

for ep_val in ep[1:m]
  global ep_sum += ep_val
end

ep_mean = ep_sum / m
@show ep_mean

@show ep_mean === mean(ep[1:m])
@show isapprox(ep_mean, mean(ep[1:m]))
@show ep_mean === sum(ep[1:m]) / m

# You can broadcast operations over julia
# you dont need the function keyword if it a single line function
#function generatedata(n)
#  local ep = randn(n)
#  return ep .^ 2
#end

# generatedata(n) = rand(n) .^ 2


# We can broadcast a function
f(x) = x^2
generatedata(n) = f.(rand(n))

@show data = generatedata(5)

println("Press Enter to exit program....")
readline()

