# Show/hide cursor
hide_cursor() = print("\e[?25l")
show_cursor() = println("\e[?25h")

function clearscreen()
    println("\33[2J")
    #hide_cursor()
    # Move cursor to (1,1), then print a bunch of whitespace, then move cursor to (1,1)
    println("\033[1;1H$(join(fill(repeat(" ", 100),100), "\n"))\033[1;1H")
end

function draw9(a9::Vector{Int64})
		msg = raw"""
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓     $1     ▓▓     $2     ▓▓     $3     ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓     $4     ▓▓     $5     ▓▓     $6     ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓     $7     ▓▓     $8     ▓▓     $9     ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓            ▓▓            ▓▓            ▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
		"""

    for i=1:9
    	if a9[i]==2
    		msg=replace(msg,"\$"*string(i) => "  ")
    	else
    	  msg=replace(msg,"\$"*string(i) => " "*string(a9[i]))
    	end
    end

    printstyled(msg,bold=false,color=:red)
end

using Random

idxs=[1:9;]
a9=[2,2,2,2,2,2,2,2,2]

for i=1:9
	sleep(3)
	clearscreen()
	idx=rand(idxs)
	global idxs=collect(skipmissing(replace(idxs,idx=>missing)))
	if i%2==1 
	  a9[idx]=1
  else
  	a9[idx]=0
  end
  draw9(a9)
end
