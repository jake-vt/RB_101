=begin
------------------------------------------------------------------------------------------
### - a method that takes an array of integers, and returns a new array
### - with every other element from the original array, starting with
### - the first element. For instance:
                                    every_other([1,4,7,2,5]) # => [1,7,5]

1) SET 5-interger array (from user)
2) ITERATE through array; SELECT even index-value pairs; SET result array
3) PRINT result array
------------------------------------------------------------------------------------------
=end

origin_array = []
puts 'Welcome to the Number Slicer'
puts '=> Please input any five integers'

loop do
  origin_array[origin_array.size] = gets.chomp.to_i
  break if origin_array.size >= 5
end

def every_other(array)
  puts '=> Numbers that survived the Slicer:'
  sliced_array = array.map.with_index do |number, index|
    number if index.even?
  end
  
  sliced_array.join(' ')
end

puts every_other(origin_array)
