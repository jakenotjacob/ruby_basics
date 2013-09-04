class Explosion

  def explode(brick1, brick2, brick3, brick4)
    puts "I have a #{brick1} ana #{brick2} anda #{brick3} and last a #{brick4}"
  end

  def doit(things)
    things.each { |thing|
    puts thing 
    }
  end

end

items = %w[this, that, this, then]
tnt = Explosion.new


#items = %w[this, that, this, then]
tnt.doit(items)

tnt.explode(*items)
tnt.explode(*(1..4))




