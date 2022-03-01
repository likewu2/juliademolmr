open("for2file2.txt", "w") do io
  sleep(5)



  for i = 1:150000000000000000000000000000000
    sleep(0.1)

    #write(io, string(i," "))
    write(io, string(2^i," "))

    flush(io)

  end


end