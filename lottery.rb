class LotteryTicket
  NUMERIC_RANGE = 1..25
  attr_reader :picks, :purchased

  def initialize(*picks)
    if picks.length !=3
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3
      raise ArgumentError, "the three numbers must each be different"
    elsif picks.detect { |p| not NUMERIC_RANGE === p }
      raise ArgumentError, "the three picks must be numbers between 1 and 25"
    end
    @picks = picks
    @purchased = Time.now
  end

  #To add random generation of ticket numbers
  def self.new_random
    new( rand( 25 ) + 1, rand( 25 ) + 1, rand( 25 ) + 1)
  rescue ArgumentError
    retry
  end

  #Compares ticket against random ticket(winning ticket)
  #Gives the ticket 1 point for every number matched
  def score( final )
    count = 0
    final.picks.each do |note|
      count += 1 if picks.include? note
    end
    count
  end

end


class LotteryDraw
  @@tickets = {}
  def LotteryDraw.buy( customer, *tickets )
    unless @@tickets.has_key? ( customer )
      @@tickets[customer] = []
    end
    @@tickets[customer] += tickets
  end
end
