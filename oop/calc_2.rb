# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

module FancyCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class AwesomeCalculator
  include SimpleCalculator
  include FancyCalculator
end

# Copy your driver code from the previous exercise below:

calculator = AwesomeCalculator.new
  puts calculator.add(2, 4)
  puts calculator.subtract(8, 3)
  puts calculator.multiply(4, 8)
  puts calculator.divide(20, 5)
  puts calculator.square_root(81)