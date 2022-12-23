=begin
------------------------------------------------------------------------------------
- Ask user for a (1) current age and (2) desired retirement age. 
- Get (3) current year
- Calculate (4) retirement year and (5) years left
- Display (3) current year and both (4,5) results
------------------------------------------------------------------------------------
=end

def prompt(message)
  puts "=> #{message}"
end

#SET current_age
prompt("What is your age?:")
current_age = gets.chomp.to_i

#SET retirement_age
prompt("At what age would you like to retire?:")
retirement_age = gets.chomp.to_i

#GET current_year
current_year = Time.now.year.to_i

#CALCULATE results (years_left & retirement_year)
years_left = retirement_age - current_age
retirement_year = current_year + years_left

#DISPLAY current_year & results
prompt("It's #{current_year}. You will retire in #{retirement_year}.\n" +
       "You only have #{years_left} years of work to go!")
