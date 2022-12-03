=begin

### - a method that takes an array of integers, and returns a new array
### - with every other element from the original array, starting with
### - the first element. For instance:
                                    every_other([1,4,7,2,5]) # => [1,7,5]

1) Invite and accept a 5 interger array from the user
2) Iterate through array to populate a new array with old even index-value pairs
3) Print this new array to the user

=end

origin_array = []
puts 'Welcome to the Number Slicer'
puts '=> Please input any five integers'

loop do
  origin_array[origin_array.size] = gets.chomp.to_i
  break if origin_array.size > 4
end

def every_other(array)
  puts '=> Numbers that survived the Slicer:'
  sliced_array = array.map.with_index do |number, index|
    number if index.even?
  end
  puts sliced_array.join(' ')
end

every_other(origin_array)
