=begin
___  ||Yer pal
¯¯¬|_||  Mitt3ns
  (°x°)
  /v v)
o(    )
=end

toppings = %w[ cheese pepperoni mushrooms sausage shoes black-olives bacon ]
toppings.each do |topping|
  case topping
  when 'mushrooms'
    next
  when 'cheese'
    puts "I slammed some cheese on that bitch..."
  when 'pepperoni'
   puts "then some motha fuckin pepperoni..."
  when 'sausage'
    puts 'then some goddamned sausage...'
  when 'black-olives'
    puts 'and of course black-olives, I fucking love black olives.'
  when 'bacon'
    puts 'and last but never least, some BACONs.'
  else
    puts "wtf is that... #{topping}? get that off my fuggin pizza."
  end
end
