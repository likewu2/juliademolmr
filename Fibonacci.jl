aa=[1]
pop!(aa)

zz=[1, 4, 7, 10, 13, 16, 19, 22, 25]
yy=[0, 3, 4, 3,  0,  3, 4,  3,  0]
xx=[1, 2, 3, 4,  5,  6,  7,  8,  9]
plot(xx, [yy,zz])

# 0 3 4 3 0 3 4 3 0
function zhouqi4(n)
  if n%4==1
    0
  elseif n%4==2
    3
  elseif n%4==3
    4
  elseif n%4==0
    3
  end
end

# 1 4 7 10 13 16 19 22 25
function add3(n)
  if n==1
    1
  else
    add3(n-1)+3
  end
end

function jia3(n)
  if n==1
    1
  else
    jia3(n-1) + 3
  end
end

#爬楼梯几种爬法：
#   1 2 3 5 8 13 21 34 55 89
function palouti(n)
  if n==1
    1
  elseif n==2
    2
  else
    palouti(n-1) + palouti(n-2)
  end
end

# 1 1 2 3 5 8 13 21 34 55 89
function Fibonacci(n)
  if n<=0
    return 0
  end
  if n==1 || n==2
    1
  else
    Fibonacci(n-2) + Fibonacci(n-1)
  end
end


# 1 2 4 7 3 6 5 9
# 1 7 3 5 9 2 4 6
function reOrderArray()
  xx=[1,2,4,7,3,6,5,9]

  oddCount=0
  oddBegin=1
  yy=zeros(Int8, length(xx))

  for x in xx
    if x%2==1
      oddCount = oddCount + 1
    end
  end

  oddCount = oddCount + 1
  for x in xx
    if x%2==1
      yy[oddBegin]=x
      oddBegin = oddBegin + 1
    else
      yy[oddCount]=x
      oddCount = oddCount + 1
    end
  end

  println(yy)
end
