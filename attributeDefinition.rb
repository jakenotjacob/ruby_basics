class Snack
  attr_accessor :name, :eaten
  def initialize
    @name = name
    @eaten = false
  end
end
peanut = Snack.new
peanut.name = "joe"
