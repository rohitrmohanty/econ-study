## White Noise Plots Program

using LaTeXStrings, Plots

println("White Noise Plots Program")
# Change the length 'n' and the function like x^3, 1/x etc
n = 100
f(x) = x^2

# Try Various Inputs using randn(n) etc
x = rand(n)
histogram(x, bins = 30, title = "Distribution of x", ylabel = "Frequency")

# Plot x and x² against index (1:n); shows how values jump due to randomness
plot(f.(x), label = L"x^2", title = "x and x² over index")
plot!(x, label = L"x")
display(current())

println("Press Enter for next plot....")
readline()

# Plot raw x values against their squares; illustrates f(x) = x² but with unsorted input
plot(x, f.(x), label = L"x::f(x) = x^2", title = "x vs x² (unsorted)")
display(current())

println("Press Enter for next plot....")
readline()

# Sort x before plotting; reveals the smooth functional relationship of f(x) = x²
x_sorted = sort(x)
y_sorted = f.(x_sorted)
plot(x_sorted, y_sorted, label = L"x::f(x) = x^2", title = "x vs x² (sorted for smooth curve)")
display(current())

println("Press Enter for next plot....")
readline()

# Generate Observational Noise
ϵ = 0.1 * randn(n)
histogram(ϵ, bins = 30, title = "Distribution of Noise ϵ", ylabel="Frequency") 
display(current())

println("Press Enter for next plot....")
readline()

# Add Observational Noise independent of x to the deterministic output
y_noisy = y_sorted + ϵ
plot(x_sorted, y_noisy, label = L"x^2 + \epsilon", title = "Noisy observations of x²")
display(current())

println("Press Enter for next plot....")
readline()

# Plot Both On top of Each Other
plot(x_sorted, y_sorted, label = L"x^2", linewidth=2)
plot!(x_sorted, y_noisy, label = L"x^2 + \epsilon", linestyle=:dash)
display(current())

println("Press Enter to exit program....")
readline()
