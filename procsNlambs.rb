#Concerning procs and lambda's
#From Codeacademy.com
#

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  #Does not return to calling method
  # This will not run
  "Iron Man will win!"
end

p "proc: "
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  #This will return the lambda value...
  # But will not be the last value returned
  "Iron Man will win!"
end

p "lambda:"
puts batman_ironman_lambda

#ints_filter = lambda { |x|  ( x.is_a? Integer ) ? x : next }
#ints = odds_n_ends.collect(&ints_filter)
#=>[nil, 42, nil, 3, nil, 19, nil]
#

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints_filter = lambda { |x|  (x.is_a? Integer) ? x : next }
##ints_filter = Proc.new { |x| (x.is_a? Integer) ? x : next }
#
ints = odds_n_ends.select(&ints_filter)
#=>[42, 3, 19]
#
owns_one_goat = -> {|x| x.first == 1}; a.reject(&has_one_goat)
