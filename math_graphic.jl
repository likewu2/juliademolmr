using Luxor

function showangle(pt1, pt2, pt3)
    θ = anglethreepoints(pt1, pt2, pt3)
    label(string(round(rad2deg(θ), digits=2), "°"), :w, pt2)
    newpath()
    carc(pt2, 50, 0, -θ)
    strokepath()
end

let
    background("grey20")
    sethue("white")
    fontsize(12)
    tiles = Tiler(800, 800, 4, 4)
    for (pos, n) in tiles
        @layer begin
            translate(pos)
            pg = [polar(50, 0), O, polar(50, n * -2π/16)]
            poly(pg, action = :stroke)
            for n in 1:3
                pt1 = pg[1]
                pt2 = pg[2]
                pt3 = pg[3]
                showangle(pt1, pt2, pt3)
            end
        end
    end
end


▲ = Point[Point(-100.0, 0.0), Point(110.0, 30.0), Point(65.0, 90.0)]

@layer begin
    sethue("red")
    setline(2)
    poly(▲,  :stroke, close=true)
end

# circumcenter
circle(▲..., action = :stroke)
cp = trianglecircumcenter(▲...)
circle(cp, 2, action = :fill)
label("circumcenter", :N, cp)

# incenter
cp = triangleincenter(▲...)
circle(cp, 2, action = :fill)
pt1 = getnearestpointonline(▲[1], ▲[2], cp)
@layer begin
    sethue("black")
    circle(cp, distance(cp, pt1), action = :stroke)
    label("incenter", :S, cp)
end

# center
cp = trianglecenter(▲...)
circle(cp, 2, action = :fill)
label("center", :w, cp)

# orthocenter
cp = triangleorthocenter(▲...)
circle(cp, 2, action = :fill)
label("orthocenter", :e, cp)
