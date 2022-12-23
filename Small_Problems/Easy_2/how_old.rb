=begin
------------------------------------------------------------------------------------------
- Ask for a name, and then print the age for that person. 
- Age should be random number between 20 - 200
- Use "Teddy" as the name if no name is entered.
------------------------------------------------------------------------------------------
=end

# DEFINE METHOD
def print_age(name="Teddy", age)
  puts "#{name} is #{age} years old!"
end

# SET NAME
puts "=> Hi! Please enter a name:"
name = gets.chomp.downcase.capitalize

# SET AGE
age = rand(20..200)

# CALL METHOD
name.empty? ? print_age(age) : print_age(name, age)
