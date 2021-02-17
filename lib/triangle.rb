class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
    if side1 <= 0 || side1 + side2 <= side3
      raise TriangleError
    elsif [side1, side2, side3].any? {|x| x <= 0}
      raise TriangleError
    end
    sides = [side1, side2, side3].sort
    
    unless sides[0]+sides[1] > sides[2]
      raise TriangleError
    end
  end

  def triangle_inequality
    if side1 <= 0 || side1 + side2 <= side3
      return true
    else
      return false
    end
  end
    
  



  def kind
    if side1==side2 && side2==side3
      :equilateral
    elsif
      side1==side2 && ((side1 || side2) != side3)
      :isosceles
    elsif
      side1==side3 && ((side1==side3) != side2)
      :isosceles
    elsif
      side2==side3 && ((side2 || side3) !=side1)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end