Base.display(x)=print(x)
function print123(msg,color::Union{Symbol,Int}=:normal)
  printstyled(msg,bold=false,color=color)
  println()
end
#add=+

using asciiart