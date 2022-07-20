f=[8.2,9.6,7,18]
sum=f[1]+f[2]+f[3]+f[4]
print123(sum, :blue)

aa=0

for i in 1:4

print123(i, :blue)
print123(f[i], :blue)

global aa=aa+f[i]

end

print123(aa, :blue)