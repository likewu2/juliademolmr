ENV["JULIA_PKG_SERVER"] = "https://mirrors.cernet.edu.cn/julia"
#ENV["PYTHON"] = "G:/Espressif/python_env/idf5.1_py3.8_env/Scripts/python.exe"
ENV["PYTHON"] = ""  #use Conda

Base.display(x)=print(x)  #Base.display(x)=Base.Multimedia.redisplay(x)
function print123(msg,color::Union{Symbol,Int}=:normal)
  printstyled(msg,bold=false,color=color)
  println()
end

function print_rgb(r, g, b, t)
  print("\e[1m\e[38;2;$r;$g;$b;249m",t)
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

using REPL
function repl_pre()

end
function repl_post()

end
function repl_transform_prepost(ex)
  res_sym = gensym()
  ex1=Expr(:toplevel, :($repl_pre()), :($res_sym = $ex), :($repl_post()), :($res_sym))
  dump(ex1)
  println("0b", string(0b111, base=2))
  return ex1
end
if isdefined(Base, :active_repl_backend)
  if VERSION >= v"1.5.0-DEV.282"
    pushfirst!(Base.active_repl_backend.ast_transforms, repl_transform_prepost)
  else
    # Unsupported
  end
elseif isdefined(Main, :IJulia)
  # Unsupported
  Main.IJulia.push_preexecute_hook(repl_pre)
  Main.IJulia.push_postexecute_hook(repl_post)
elseif VERSION >= v"1.5.0-DEV.282"
  pushfirst!(REPL.repl_ast_transforms, repl_transform_prepost)
end

#=
try
    using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end
=#
