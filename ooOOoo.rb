@stuff = ["o", "-", "."]

25.times do (p @stuff.rotate!.reverse) && (sleep 0.25) end
25.times do (p @stuff.rotate!) && (sleep 0.25) end

#I want to make this change by a keyboard press...
#=> while STDIN.get.chomp == nil ? p @stuff.rotate!: puts @stuff.rotate!.reverse!
