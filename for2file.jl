using Printf

open("for2file4.txt", "w") do io
  sleep(5)



  for i in 0:150000000000000000000000000000000
    sleep(0.1)

    #write(io, string(i," "))
    write(io, @sprintf("%16.d\n",i))
    #write(io, @sprintf("%16s\n",string(i,base=2)))
    #write(io, string(2^i," "))

    flush(io)

  end


end