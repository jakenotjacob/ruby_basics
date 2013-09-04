#Arguments n stuff
def arglist(arg1, *rest)
  "--#{arg1}--#{rest.join( ', ')} to follow..."
end

puts arglist("if").class
puts arglist("you", "add").upcase
puts arglist("another", "it", "will")





