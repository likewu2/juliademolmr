# 笼子里有50个头和160只脚
head=5
leg=16
aa=0.01
bb="aaaaabbbbbbbb"
cc=true
dd=false

for ji in 0:head
  
  tuzi=head-ji
  jiao=ji*2+tuzi*4
  if jiao==leg
    println("鸡：",ji,"  兔子：",tuzi,"  脚：",jiao)
  end

end