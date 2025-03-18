function chicken_and_rabbit(heads, legs)
    #穷举法解决鸡兔同笼问题
    for chickens in 0:heads
        rabbits = heads - chickens
        if 2 * chickens + 4 * rabbits == legs
            return (chickens, rabbits)
        end
    end

    return (Nothing, Nothing)
end

# 假设有35个头和94只脚
heads = 35
legs = 94

(chickens, rabbits) = chicken_and_rabbit(heads, legs)

if chickens != Nothing && rabbits != Nothing
    println("鸡有 ", chickens, " 只, 兔子有 ", rabbits, " 只。")
else
    println("没有找到合适的解。")
end