# 1 4 7 10 13 16 19 22

function add3(n)
  if n<=0
    return 0
  end
  if n==1
    return 1
  end
  return add3(n-1) + 3
end


# 1 1 2 3 5 8 13 21 34 55 89

function Fibonacci(n)
  if n<=0
    return 0
  end
  if n==1 || n==2
    return 1
  end
  return Fibonacci(n-2) + Fibonacci(n-1)
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
