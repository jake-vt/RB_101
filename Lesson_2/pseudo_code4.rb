=begin
------------------------------------------------------------------------------------------
### - A method that determines the index of the 3rd occurrence of 
### - a given character in a string. For instance: 
### -     the given character is 'x' and the string is 'axbxcdxex', 
          the method should return 6 (the index of the 3rd 'x')
### - If the given character does not occur at least 3 times, return 'nil'.

1) Invite and accept a long string from the user
2) Invite and accept the target character
3) Locate the 3rd instance of the target character
4) Print the index of this instance 
------------------------------------------------------------------------------------------
=end

def third_instance(string, target_char)
  instance = 3
  string.each_char.find_index do |char| 
    char == target_char && (instance = instance - 1).zero? 
  end
end

puts "Welcome to the Char Targeter"
puts "(this program tells you at which point in a word)\n(a particular letter appears for the 3rd time! Wow!)"

puts "=> Please enter a loooong sequence of letters:"
string = gets.chomp

puts "=> Please enter a target letter:"
target_char = gets.chomp

puts third_instance(string, target_char)
