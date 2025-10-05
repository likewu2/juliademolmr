#using AlgebraOfGraphics
#using CairoMakie
#using WGLMakie
using GLMakie

box = Rect2f(-1, -1, 2, 2)

f = Figure(size = (700, 700))
a = Axis(f[1, 1], aspect = DataAspect())
xlims!(a, -11, 11); a.xticks = -10:1:10
ylims!(a, -11, 11); a.yticks = -10:1:10

# Initial plot for reference
scatterlines!(a, box, color = 1:4, markersize = 20, linewidth = 5)

# Transformed plot
p2 = scatterlines!(a, box, color = 1:4, markersize = 20, linewidth = 5)
#origin!(p2, 3,0,0) # apply rotation & scaling relative to the center of the box
#center_point = Point2f(4.0, 2.0)  # The point you wanted as origin
#translate!(p2, -center_point...)  # Move to origin

scale!(p2, 2.0, 2.0)       # double x, y
rotate!(p2, deg2rad(90))      # 90° rotation
translate!(p2, -5, 5)

f