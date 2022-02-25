class Rectangle 
  attr_accessor :length, :width
    
    def initialize(l, w)
      @length = l
      @width = w
  end

  def area
    area = length * width 
    puts "The area is #{area}."
  end

  def perimeter
    perimeter = length + length + width + width 
    puts "The perimeter is #{perimeter}."
  end
end

rectangle1 = Rectangle.new(7, 8)
rectangle1.area
rectangle1.perimeter