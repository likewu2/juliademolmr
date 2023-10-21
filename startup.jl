ENV["JULIA_PKG_SERVER"] = "https://mirrors.cernet.edu.cn/julia"
#ENV["PYTHON"] = "G:/Espressif/python_env/idf5.1_py3.8_env/Scripts/python.exe"
ENV["PYTHON"] = ""  #use Conda

Base.display(x)=print(x)  #Base.display(x)=Base.Multimedia.redisplay(x)
function print123(msg,color::Union{Symbol,Int}=:normal)
  printstyled(msg,bold=false,color=color)
  println()
end

push=push!
pop=pop!
pushfirst=pushfirst!
popfirst=popfirst!
insert=insert!
delete=deleteat!
update=splice!

Base.max(a::AbstractArray)=maximum(a::AbstractArray)
Base.min(a::AbstractArray)=minimum(a::AbstractArray)
cat(arrays::Vector{T}...) where T=vcat(arrays...)

#add /storage/MathLand/asciiart.jl
using UnicodePlots
plot(x::AbstractVector{T} where T, y::AbstractVector{T} where T)=lineplot(x, y)
#RecipesBase.plot(x::AbstractVector{T} where T, y::AbstractVector{T} where T)=Plots.plot(x,y,     marker = (10, 0.6, :green, stroke(3, 0.2, :black, :dot)))
using asciiart

#=
using MutableNamedTuples
#cc=MutableNamedTuple(NamedTuple{keys(ans)}(Ref.(values(ans))))
#NamedTuple(itr) = MutableNamedTuple(NamedTuple{keys(itr)}(Ref.(values(itr))))
function start_tuple(repl)
  
end

atreplinit(start_tuple)
=#

#ENV["PYTHON"] = "D:\\Programs\\Python38\\python.exe"
#ENV["GYM_ENVS"]="atari:algorithmic:box2d:classic_control"
#Pkg.add("Conda")

#cp /storage/MathLand/juliademolmr/startup.jl ~/.julia/config/

#=
using SQLREPL

function start_sqlrepl(repl)
  SQLREPL.connect("host=www.pvtool.com port=5532 dbname=test user=test1 password=test1")
end

atreplinit(start_sqlrepl)
=#
