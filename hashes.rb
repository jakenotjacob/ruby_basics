#=> Hashes in Ruby
#
#Declaring a hash
#=> And returning a value inside a hash 
info = { 'name' => 'jake', 'last_name' => 'campbell', 'age' => 22 }
puts info['name'] #=> jake

infodos = { :name => 'jake', :last_name => 'campbell', :age => 22 }
puts infodos[:last_name] #=> campbell

infotres = { name: 'jake', last_name: 'campbell', age: 22 }
puts infotres[:age] #=> 22

#=> Accessing using shortcut methods operator []
puts info.[]('name')


#=> Multi-valued hashes
lots = { stuff: [ 'one', 'two', 'three' ] }
puts lots[:stuff][0] #=> one
puts lots[:stuff][1] #=> two
puts lots[:stuff][2] #=> three

lots_mo = { stuff: %w[ one two three ] }
puts lots_mo[:stuff][0] #=> one
puts lots_mo[:stuff][1] #=> two
puts lots_mo[:stuff][2] #=> three


#=> Sorting hashes
kitty_toys = [
  { shape: 'sock', fabric: 'cashmere'},
  { shape: 'mouse', fabric: 'calico'},
  { shape: 'eggroll', fabric: 'chenille'}
]

kitty_toys.sort_by { |toy| toy[:fabric] }.each do |toy|
  puts "Bauderson has a #{toy[:shape]} made of #{toy[:fabric]}"
end
