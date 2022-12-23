=begin
------------------------------------------------------------------------------------------
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

EXPECTED OUTPUT
---------------
# - All tests below should print 'true'

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
------------------------------------------------------------------------------------------
=end

def reverse_sentence(str)
  reversed_array = str.split.reverse
  reversed_string = reversed_array.join(' ')
end

string_1 = "Hello World"
string_2 = "Reverse these words"
string_3 = ""
string_4 = "     "

puts reverse_sentence(string_1)
puts reverse_sentence(string_2)
puts reverse_sentence(string_3).inspect
puts reverse_sentence(string_4).inspect
