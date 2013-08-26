things = {
  rock: 'heavy',
  scissors: 'ok',
  paper: 'light'
}

things.each do |thing, weight|
  answer = weight.to_s == 'ok'
  if answer == true
    puts "The #{thing} fits!"
  else 
    puts "We must aquit."
  end
end


#!!!!!
#Bonus: Modify to use a conditional ("conditional expression")
#This will turn in the above code inside the blocks to...
#
#answer = 'ok'
#(weight == answer) ? (p "DAS TRU.") : ( p "AIN'T TRUE")
#
#=>i.e. - "if true... then do this... otherwise this..."#
