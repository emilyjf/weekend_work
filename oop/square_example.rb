
class Rectangle
  attr_accessor :length, :width
  def initialize(input_options)
    @length = input_options[:length]
    @width = input_options[:width]
  end

  def area
    @length * @width
  end
end

class Square < Rectangle
  def initialize(input_options)
    @length = input_options[:length]
    @width = input_options[:length]
  end
end

square = Square.new(length: 5)
p square.width
p square.area
