#https://www.mathsisfun.com/geometry/point.html
#https://www.mathsisfun.com/calculus/fourier-series-graph.html
#https://www.falstad.com/fourier/
#https://www.jezzamon.com/fourier/index.html

#https://loganamorrison.github.io/post/visualizing-fourier-series/

struct FourierSeries
    a0::Float64
    ans::Array{Float64, 1}
    bns::Array{Float64, 1}
end

using QuadGK

"""
    FourierSeries(f; N=10)

Generate a FourierSeries object containing the the first `N` (excluding a0)
Fourier coefficients of the function `f` over the interval (-π, π).
"""
function FourierSeries(f::Function; N::Int=10)
    a0::Float64 = quadgk(t-> f(t), -π, π)[1] / π
    ans = Array{Float64, 1}(undef, N)
    bns = Array{Float64, 1}(undef, N)
    for n in 1:N
        ans[n] = quadgk(t-> f(t) * cos(n * t), -π, π)[1] / π
        bns[n] = quadgk(t-> f(t) * sin(n * t), -π, π)[1] / π
    end
    FourierSeries(a0, ans, bns)
end

"""
    eval(t, fs::FourierSeries)

Evaluate the Fourier series `fs` at the time `t`.
"""
function eval(t::Float64, fs::FourierSeries)
    fs.a0 / 2 + sum(fs.ans[n] * cos(n * t) + fs.bns[n] * sin(n * t)
                    for n in 1:length(fs.ans))
end

function eval(ts::AbstractRange, fs::FourierSeries)
    [eval(t, fs) for t in ts]
end

# step function: zero for t < 0 and π for t > 0.
f(t) = t<0 ? 0.0 : π;
fs = FourierSeries(f)
# Plot it!
using Plots;
ts = LinRange(-π, π, 100);
plot(ts, eval(ts, fs), linewidth=1.5, label="Fourier", framestyle=:box)
plot!(ts, [f(t) for t in ts], linewidth=2, label="f")
ylabel!("f(t)")
xlabel!("t")


f(t) = t<0 ? t+π : π
fs = FourierSeries(f)
# Plot window will always be -π → π
ts = range(-π, stop = π, length = 50);

"""
    circle(x, y, r)

Construct x and y positions of a cicle of radius `r` centered at (`x`, `y`).
"""
function circle(x, y, r)
    θ = LinRange(0.0, 2π, 500)
    x .+ r * sin.(θ), y .+ r * cos.(θ)
end

@gif for i = 1:1500
    shift = i / 100 #
    plot(
        ts,
        [eval(t + shift, fs) for t in ts],
        ylims = (-1.5, π + 1.5),
        legend = false,
        xlims = (-π, 4π),
        framestyle = :box,
        aspect_ratio = 1
    )
    x = 2.5π
    y = fs.a0 / 2
    r = sqrt(fs.ans[1]^2 + fs.bns[1]^2)
    ϕ = -atan(fs.bns[1], fs.ans[1])
    plot!(
        circle(x, y, r),
        seriestype = [:shape,],
        linecolor = :black,
        c = :white,
        legend = false
    )
    t = ts[end] + shift
    for n = 2:length(fs.ans)
        x += r * sin((n - 1) * t + ϕ)
        y += r * cos((n - 1) * t + ϕ)
        r = sqrt(fs.ans[n]^2 + fs.bns[n]^2)
        ϕ = -atan(fs.bns[n], fs.ans[n])
        plot!(
            circle(x, y, r),
            seriestype = [:shape,],
            linecolor = :black,
            c = :white,
            legend = false,
            fillalpha = 0.0
        )
        scatter!([x], [y], markersize = 0.3)
    end
    x += r * sin(length(fs.ans) * (ts[end] + shift) + ϕ)
    y += r * cos(length(fs.ans) * (ts[end] + shift) + ϕ)
    scatter!([x], [y], markersize = 0.1)
    interps = range(ts[end], stop = x, length = 50)
    plot!(interps, [y for _ in interps], color = :purple)
end every 10
