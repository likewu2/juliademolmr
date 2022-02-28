open("for2file.txt", "w") do io
  sleep(5)



  for i = 1:150000000000000000000000000000000
    sleep(0.1)

    write(io, string(i," "))

    flush(io)

  end


end