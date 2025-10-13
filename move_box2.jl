using Luxor

img = readpng("e:/app/julia/juliademolmr/julia-logo-mask.png")
w = img.width
h = img.height

@png begin
  rulers()
  scale(0.3, 0.3)
  rotate(π/4)
  placeimage(img, Point(-w/2, -h/2), .5)
  sethue("red")
  circle(-w/2, -h/2, 15, :fill)
end