# 笼子里有50个头和160只脚
head=5
leg=16
youdaan=false

aa=0.01
bb="aaaaabbbbbbbb"
cc=false
dd=true
cc=0
dd=1
cc="F"
dd="T"
cc="阴"
dd="阳"

struct Wushi
  xm
  wl
  xl
end
lvbu = Wushi("吕布",100,1000)
zhangfei = Wushi("张飞",200,500)

mutable struct Jiedian
 l
 r
end
aa=Jiedian(nothing, nothing)
aa.l=Jiedian(nothing, nothing)
aa.r=Jiedian(nothing, nothing)


for ji in 0:head
  
  tuzi=head-ji
  jiao=ji*2+tuzi*4
  if jiao==leg
    global
    youdaan=true
    println("鸡：",ji,"  兔子：",tuzi,"  脚：",jiao)
  end

end

if youdaan==false
  println("没有答案")
end