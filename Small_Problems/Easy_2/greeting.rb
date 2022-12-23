=begin
------------------------------------------------------------------------------------------
- Ask user for a name
- IF user inputs a "!", respond with greeting in BLOCK CAPS
- ELSE respond with normal greeting
------------------------------------------------------------------------------------------
=end

#GET name
puts "=> What is your name?:"
name = gets.chomp

if name[-1] == "!"
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end
