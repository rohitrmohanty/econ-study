# White Noise Plots Program

A Julia program that demonstrates key concepts in statistical modeling, random distributions, and visualization through a series of interactive plots.

## Overview

This program illustrates the relationship between random data, functional transformations, and observational noise using visual plots. It serves as an educational tool for understanding fundamental concepts in statistics, econometrics, and data analysis.

## Concepts Demonstrated

- Random number generation (uniform and normal distributions)
- Function transformations (currently using f(x) = x²)
- The effect of sorting on revealing underlying relationships
- Observational noise and its impact on data analysis
- Visualization of statistical distributions and relationships

## Requirements

- Julia (version 1.0 or higher)
- Packages:
  - Plots
  - LaTeXStrings

## Installation

1. Ensure Julia is installed on your system
2. Install required packages:
   ```julia
   using Pkg
   Pkg.add("Plots")
   Pkg.add("LaTeXStrings")
   ```

## Running the Program

To run the program:

```bash
julia white_noise_plots.jl
```

The program is interactive - press Enter after each plot to proceed to the next visualization.

## Program Flow

The program generates a series of plots:

1. **Distribution of Random Values**: Histogram showing the distribution of random values
2. **Raw Values and Their Squares**: Plots both x and x² against their indices
3. **Unsorted Function Relationship**: Demonstrates the relationship between x and x² with unsorted data
4. **Sorted Function Relationship**: Reveals the smooth functional form by sorting the input data
5. **Noise Distribution**: Histogram showing the distribution of random noise
6. **Noisy Observations**: Shows how noise affects the observed relationship
7. **Comparison Plot**: Overlays the true relationship and noisy observations for comparison

## Customization

The program can be easily modified to explore different concepts:

- Change the number of data points by modifying `n`
- Explore different functions by altering `f(x)`
- Try different random distributions by changing `rand(n)` to alternatives like `randn(n)`
- Adjust the noise level by modifying the coefficient in `0.1 * randn(n)`

## Educational Value

This program is particularly useful for:
- Students learning statistics and econometrics
- Julia programming beginners
- Anyone interested in understanding how noise affects data analysis
- Visualization of mathematical relationships

## Extensions

Possible extensions to this program could include:
- Adding regression analysis to recover the function from noisy data
- Implementing confidence intervals
- Exploring different noise distributions
- Adding interactive parameters using a package like Interact.jl

## Attribution

This program is inspired by examples from [QuantEcon's Julia by Example](https://julia.quantecon.org/getting_started_julia/julia_by_example.html), adapted from their Jupyter notebook format into a standalone Julia script.

## License

See the [LICENSE.md](./LICENSE) file in the root directory of this repository for license information.# econ-study
My studies of economics through the julia programming language
