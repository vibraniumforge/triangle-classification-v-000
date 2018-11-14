require "pry"
class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x,y,z)
    @x=x
    @y=y
    @z=z
  end

  def kind
    if (x.positive? && y.positive? && z.positive? ) && ((@x+@y>@z && @y+@z>@x && @x+@z>@y))
      puts z
      # binding.pry
      if @x==@y && @y==@z
        return :equilateral
      elsif @x==@y  ||  @y==@z|| @x==@z 
        return :isosceles
      else
        return :scalene
      end
    else
        raise TriangleError
    end
  end

  def validate_triangle

  end


class TriangleError < StandardError
end

end
