#import Pkg;
#Pkg.add("Plots")
#Pkg.add("PlotlyBase")
#Pkg.add("PlotlyKaleido")
#Pkg.add("Bonito")

using Bonito
using Plots
plotly()

x = rand(100);
y = rand(100);
p=plot([sin, cos], 0, 2pi);
#p=plot(y=sin(fill(1.0, (2,2))), fmt=:html);
#println(joinpath(@__DIR__, "index.png"))
#png(p, joinpath(@__DIR__, "index.png"))

app = App() do
  #pngfile = Bonito.Asset(joinpath(@__DIR__, "index.png"))
  #println(pngfile)
  #return DOM.div(DOM.img(src=pngfile, style="height: 500px;"))
  #PCard(p) = Card(p, padding="0px", margin="0px")
  return Grid(
    #PCard(gp),
    PCard(p),
    #PCard(makie_plot());
    columns="repeat(auto-fit, minmax(300px, 1fr))", justify_items="center")
end
#display(app)
port = 80
url = "0.0.0.0"
server = Bonito.Server(app, url, port)