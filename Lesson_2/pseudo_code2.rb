=begin 
------------------------------------------------------------------------------------------
### - a method that that takes an array of strings, 
### - and returns a string that is all those strings concatenated together

START 

PRINT invitation to GET & SET Array of Strings

READ & PRINT concatenated Array of Strings

END
------------------------------------------------------------------------------------------
=end

words = []

puts "Welcome to the Concatenator"
puts "=> Please enter any 5 words to turn into a sentence: "

loop do
  words[words.size] = gets.chomp.strip              #.strip removes white space before and after string
  break if words.size > 4
end

def concat(array)
  puts "=> Your sentence is:\n#{array.join(" ")}"   #.join concatenates array into a string
end

concat(words)
