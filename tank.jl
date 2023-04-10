x=100
print123(x, :red)

x=200

x=21212111
println(x)


tank3=(gongji=304,fangyu=150,xueliang=1000,mingzi="电摇家族")
tank1 = (gongji=100, fangyu=200)
tank2 = (gongji=150, fangyu=150)


struct Che
  sudu
end

struct Tank
  gongji
  fangyu
end

tank1=Tank(100,200)
tank2=Tank(150,150)

import Pluto; Pluto.run()
using Markdown

aa=md"""
Inline maths: ``x^2``

Display maths:

```math
\int_a^b f(x) \, dx
```
"""
println(aa)

bb=md"""
A paragraph containing a **bold** word.

A paragraph containing some ``\LaTeX`` markup.
"""
println(bb)