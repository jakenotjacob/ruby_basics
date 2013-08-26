=begin
\\   ||Yer pal,
 \\__||  Mitt3ns
  (°x°)
  /v v)
o( _ _)
=end
class McHammer
  def initialize()
    @touch_this = nil
    @getdown = File.readlines('mc_stan.txt')
  end

  def touch 
    puts "Can you touch this?"
    choice = gets
    if choice.start_with?( 'y', 'Y', 'mhm' )
      choice = true
    else
      choice = false
    end
    @touch_this = choice
    hammertime
  end

  def hammertime
    case @touch_this 
    when true
      p 'OH MY LAWD!'
      puts @getdown
    when false
      p "CAN'T TOUCH DIS!..."
      touch
    end
  end

end

stanley = McHammer.new
stanley.touch
#
