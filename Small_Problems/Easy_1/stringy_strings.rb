=begin
------------------------------------------------------------------------------------------
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

EXPECTED OUTPUT
---------------
puts stringy(6)   # => '101010'
puts stringy(9)   # => '101010101'
puts stringy(4)   # => '1010'
puts stringy(7)   # => '1010101'
------------------------------------------------------------------------------------------
=end

# BRUTE FORCE
def stringy(size)
  iterator = size
  array_of_binary = []

  loop do
    array_of_binary << '1'
    iterator -=1
    break if iterator == 0
    array_of_binary << '0'
    iterator -=1
    break if iterator == 0
  end

  array_of_binary.join
end

# LS SOLUTION (index, ternary op)
def stringy_2(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

puts "\n"

puts stringy_2(6)
puts stringy_2(9)
puts stringy_2(4)
puts stringy_2(7)
