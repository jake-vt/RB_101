=begin 
------------------------------------------------------------------------------------------
### - a method that returns the sum of two integers

START 

PRINT invitation to SET number_1
PRINT invitation to SET number_2

SUM number_1 & number_2. 
PRINT result

END
------------------------------------------------------------------------------------------
=end

puts "Welcome to the adder!"

puts "=> Please provide an integer"
number_1 = gets.chomp

puts "=> Please provide another integer"
number_2 = gets.chomp

def adder(num_1, num_2)
  puts "=> #{num_1.to_i} + #{num_2.to_i} = #{num_1.to_i + num_2.to_i}"
end

adder(number_1, number_2)
