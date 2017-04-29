# Create a Rectangle class with readable width and height attributes
# and a method to calculate its area.
class Rectangle

  attr_reader :width, :height

  def initialize(input_options)
    @width = input_options[:width]
    @height = input_options[:height]
  end

  def area
    puts @width * @height
  end

end

rectangle1 = Rectangle.new({width: 5, height: 3})
puts rectangle1.area


# Driver code - don't touch anything below this line.
puts "TESTING the Rectange class..."
puts

rectangle = Rectangle.new(10, 30)

result = rectangle.width

puts "width returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end
puts

result = rectangle.height

puts "height returned:"
puts result
puts

if result == 30
  puts "PASS!"
else
  puts "F"
end
puts

result = rectangle.area

puts "area returned:"
puts result
puts

if result == 300
  puts "PASS!"
else
  puts "F"
end
