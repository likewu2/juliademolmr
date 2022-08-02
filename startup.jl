Base.display(x)=print(x)
function print123(msg,color::Union{Symbol,Int}=:normal)
  printstyled(msg,bold=false,color=color)
  println()
end

#add=+
push=push!
pop=pop!
popfirst=popfirst!

#add /storage/MathLand/asciiart.jl
using asciiart

#cp /storage/MathLand/juliademolmr/startup.jl ~/.julia/config/