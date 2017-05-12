# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "Testing the HotelReservation class..."

hotelreservation_1 = HotelReservation.new({customer_name: "Emily Flanagan", date: "May 29", room_number: 219, amenities: ["fridge"]})
# p hotelreservation_1 ****Why won't "fridge" show up?

puts hotelreservation_1.room_number
hotelreservation_1.room_number = 300
puts hotelreservation_1.room_number

hotelreservation_1.amenities = "fridge"
puts hotelreservation_1.amenities

hotelreservation_1.amenities = "add_a_crib"
puts hotelreservation_1.amenities

hotelreservation_1.amenities = "add_a_custom_amenity"
puts hotelreservation_1.amenities


