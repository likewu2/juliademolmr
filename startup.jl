Base.display(x)=print(x)
print123(msg,color::Union{Symbol,Int}=:normal)=printstyled(msg,bold=false,color=color)
#add=+