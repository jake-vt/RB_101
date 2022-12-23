=begin
----------------------------------------------------------------------------
- Ask user for length & width of room in meters
- Display room area in BOTH sq meters & sq feet

EXPECTED OUTPUT:
----------------
=> Enter the length of the room in meters:
10
=> Enter the width of the room in meters:
7
=> The area of the room is 70.0 square meters (753.47 square feet).
----------------------------------------------------------------------------
=end

# DEFINE conversion of square meters to square feet
SQMETERS_TO_SQFEET = 10.7639

# SET room length
puts "=> Enter the length of the room in meters:"
room_length = gets.chomp.to_f

# SET room width
puts "=> Enter the width of the room in meters:"
room_width = gets.chomp.to_f

# CALCULATE sq_meters & sq_feet 
sq_meters = (room_length * room_width).round(2)
sq_feet = (sq_meters * SQMETERS_TO_SQFEET).round(2)

# PRINT result
puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."
