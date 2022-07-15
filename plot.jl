#using UnicodePlots
using Plots
#unicodeplots()
#gr()

#ans = barplot([1,2,3,4,5,6,7], [7,14,35,21,35,28,28])

x=[0, 1, 2, 3, 4, 5]
y=[0, 1, 2, 3, 4, 5]

ans = plot(x,y)
#ans = scatterplot([-1,1,2,3,4,5,6,7], [-1,1,2,5,3,5,4,4])

xlims!((-2,10))
ylims!((-2,10))
arrow(-2,0,12,0)

#display(ans)
gui()

#print(ans)