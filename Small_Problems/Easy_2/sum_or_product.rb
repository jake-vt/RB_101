=begin
---------------------------------------------------------------------------------
- Ask user for integer (n) that is > 0 
- Ask user if they want to SUM or PRODUCT 
- SUM or PRODUCT all numbers between 1 - n
---------------------------------------------------------------------------------
=end

#GET Number
number = nil

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  (num == num.to_i.to_s) && (num.to_i > 0)
end

loop do
  prompt("Please enter a number greater than 0:")
  number = gets.chomp 
  break if valid_number?(number)
  puts("Hmm.. that doesn't look right")
end

number = number.to_i

#GET Operation
def valid_operation?(operation)
  operation.downcase == 's' || 'p'
end

operation =nil
loop do
  prompt("Enter 's' to compute the sum;")
  prompt("Enter 'p' to compute the product")
  operation = gets.chomp
  break if valid_operation?(operation)
  puts("Hmm.. that doesn't look right")
end

#CALCULATE & OUTPUT Result
def compute_sum(num)
  total = (1..num).inject(:+)               #ALT: total = 0                                 #ALT2: total = (1..num).sum 
                                            #ALT: 1.upto(num) {|value| total += value}      
                                            #ALT: total
end

def compute_product(num)
 total = (1..num).inject(:*)                #ALT: total = 1
                                            #ALT: 1.upto(num) {|value| total *= value}
                                            #ALT: total
end

if operation == 's'
  sum = compute_sum(number)
  puts("The sum of the integers between 1 and #{number} is: \s #{sum}")
elsif operation == 'p'
  product = compute_product(number)
  puts("The product of the integers between 1 and #{number} is: \s #{product}")
end
