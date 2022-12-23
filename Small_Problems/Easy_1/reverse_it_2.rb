=begin
------------------------------------------------------------------------------------------
Write a method that takes one argument, a string, and returns the given string with words that contain five or more characters reversed

EXPECTED OUTPUT
---------------
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
------------------------------------------------------------------------------------------
=end

def reverse_sentence(str)
  initial_array = str.split
  operated_array = initial_array.map do |word| 
                   if word.length >= 5
                    word.reverse
                   else
                    word
                   end
                  end
  result_string = operated_array.join(' ')
end

string_1 = "Professional"
string_2 = "Walk around the block"
string_3 = "Launch School"

puts reverse_sentence(string_1)
puts reverse_sentence(string_2)
puts reverse_sentence(string_3)
