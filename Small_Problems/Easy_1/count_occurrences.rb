=begin
------------------------------------------------------------------------------------------
Write a method that counts the number of occurrences of each element in a given array.
Once counted, print each element alongside the number of occurrences.
The words in the array are case-sensitive: 'suv' != 'SUV'.

Expected Output
-------------
car => 4
truck => 3
SUV => 1
motorcycle => 2
------------------------------------------------------------------------------------------
=end

# BRUTE FORCE
def count_occurrences(arr)
  elements = arr.uniq
  occurrences = [] 
  elements.each {|element| occurrences << arr.count(element)}
 
  iterator = 0
  loop do
    puts "#{elements[iterator]} => #{occurrences[iterator]}"
    iterator += 1
    break if iterator >= elements.size
  end

end

# LS SOLUTION (very similar, with hash)
def count_occurrences_2(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

# IDIOMATIC 
def count_occurrences_3(arr)
  tally = arr.tally
  tally.each_pair {|key, value| puts "#{key} => #{value.to_s}"}
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
puts "\n"
count_occurrences_2(vehicles)
puts "\n"
count_occurrences_3(vehicles)
