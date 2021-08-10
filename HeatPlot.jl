# Load packages
using Plots
using Distributions
using Random
using Base.Iterators

pyplot()

vx = range(0, stop=1, length=100)
vy = range(0, stop=1, length=100)
z =map(product(vx, vy)) do (x, y)
    -((x - 0.5)^2 + (y - 0.5)^2)
end
heatmap(vx, vy, z)

heatmap(1:10, 1:10, 10)
