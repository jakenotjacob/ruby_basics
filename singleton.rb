class Shape
  def initialize(numSides, perimeter)
    @numSides = numSides
    @perimeter = perimeter
  end

  def Shape.triangle(sideLength)
    Shape.new(3, sideLength*3)
  end

  def Shape.square(sideLength)
    Shape.new(4, sideLength*4)
  end
end
