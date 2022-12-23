=begin
------------------------------------------------------------------------------------------
TASK
----
# asks the user for two numbers
# asks the user for an operation to perform
# perform the operation on the two numbers
# output the result

NOTE
----
# all methods are prefixed with their module and suffixed with their parameters for learning purposes
------------------------------------------------------------------------------------------
=end

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp().to_i

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp().to_i

Kernel.puts("What's the operation?: \n1 = add   2 = subtract \n3 = multiply   4 = divide")
operator = Kernel.gets().chomp().to_i

case operator
when 1 then result = number1 + number2
when 2 then result = number1 - number2
when 3 then result = number1 * number2
when 4 then result = number1 / number2
else Kernel.puts("Uh-Oh... something went wrong")
end

Kernel.puts("==> Result = #{result}")
