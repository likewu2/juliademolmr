a=[1,2,3]
b=[6,7,8]
#cat(a,b)
sort(a)
sum(a)
sum(b)
#plot(a,b)

print("第一个循环:")
println("")
for x in [1,3,66,86,5,5]
  #push(a,x)

  print(x)
  println("")
end
print(a)
println("")

print("第二个循环:")
println("")
w=0
for x in [1,2,3,4,5]
  global
  w=w+x
end
print(w)
println("")

print("第三个循环:")
println("")
w=0+1
for x in    1:10
  print(w)
  println("")
  global
  w=w+x
end
print(w)
println("")

for i in 1:9
  for h in 1:i
    print(h,"*", i ,"=", h*i ," ")
  end
  
  println("")
end

for i in 1:9
  if i==3
    break
  end
  
  println(i)
end


