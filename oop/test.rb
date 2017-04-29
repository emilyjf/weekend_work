class Person

  attr_reader :first_name, :last_name

  def initialize(input_options)
    @first_name = input_options[first_name]
    @last_name = input_options[last_name]
  end

  def print_info
    puts "#{@first_name} #{last_name} is a good name." 
  end
end