#Returns calling object at end; despite inside block
#Akin to RoR's 'returning' helper
#
arr = [1, 2, 3]
arr.tap do |a|
  a.each { |ele| ele += 1; puts ele } #=> 2\n 3\n 4\n
end

#=> [1, 2, 3]
#


##FOR DEBUGGING!
class Object
  def tap
    yield self
    self
  end
end

should_be = ["hello", "There", "Friend"]
"helloThereFriend".split(/ [[:upper:]] /).eql? should_be
#OH NOES! What's goin on? Which method is causing the issue?
#Time for some TAPPIN'
"helloThereFriend".split(/ [[:upper:]] /).tap {|x| puts x }.eql? should_be
#=> helloThereFriend
#Looks like it's not splitting how it's suppose to... we needing check out the split() params
"helloThereFriend".split(/[[:upper:]]/).to_s.eql? should_be
