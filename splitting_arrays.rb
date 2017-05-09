# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
  counter = 0
  smaller_array = []
  bigger_array = []
  array.each do |element|
    if counter % array_size == array_size - 1
      smaller_array << element
      bigger_array << smaller_array
      smaller_array = []
    else
      smaller_array << element
    end
    counter += 1
  end
  bigger_array
end



# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end