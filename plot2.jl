using UnicodePlots







x=[0,1,2,3,4,5,6]
y=[0,1,2,3,4,5,6]

ans = lineplot(x, y,    xlim=(-2,10), ylim=(-2,10))








#ans = barplot(x, y)
#ans = scatterplot(x, y)


#ans = annotate!(ans, 4,4,"(4,4)")

ans = xlabel!(ans,"x")
ans = ylabel!(ans,"y")
print(ans)
