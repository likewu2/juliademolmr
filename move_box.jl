using GLMakie

box = Rect2f(9, 1, 2, 2)

f = Figure(size = (500, 500))
a = Axis(f[1, 1], aspect = DataAspect())
xlims!(a, 0, 12); a.xticks = 1:1:11
ylims!(a, 0, 12); a.yticks = 1:1:11

# Initial plot for reference
scatterlines!(a, box, color = 1:4, markersize = 20, linewidth = 5)

# Transformed plot
p2 = scatterlines!(a, box, color = 1:4, markersize = 20, linewidth = 5)

#origin!(p2, 1,0,0) # apply rotation & scaling relative to the center of the box
center_point = Point2f(1.0, 0.0)
#translate!(p2, -center_point...)  # Move to origin

scale!(p2, 2, 2)       # double x, y
rotate!(p2, pi/2)      # 90° rotation
translate!(p2, -5, 5)

f