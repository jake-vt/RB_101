=begin
------------------------------------------------------------------------------------------
UPDATES
-------
1) Input validation: 
    - name (#empty?)
    - number (#valid_number?)
    - operation (#include?)
2) Cleaner Code
    - Less repetition / more DRY (#prompt)
    - Removed redundant module calls (Kernel)
    - Removed redundant parentheses (#chomp())
    - Moved some user messages to .yml file in parent dir
        - retained 'operator_prompt' to demonstrate HereDoc usage
3) User Conext: 
    - Program uses user's name
    - Notification of operation underway (#operation_to_message , HereDoc)
4) User Options:
    - Can re-run program
    - Can change language from English ('en') to Spanish ('es')
------------------------------------------------------------------------------------------
=end 

# Modules
require 'yaml'

# Constants
LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Methods
def prompt(key) # referring to the key-hash pairs in MESSAGES
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def valid_number?(num)
  (num.to_i.to_s == num) && (num.to_i != 0)
end

def operation_to_message(operation)
  case operation
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

# EXECUTION
# ----------
# Welcome Message
prompt('welcome')
name = nil

loop do
  name = gets.chomp
  name.empty? ? prompt('invalid_name') : break
end

puts("=> Hi #{name}!")

# START
loop do
  number1 = nil
  number2 = nil

  # GET & VALIDATE Numbers
  loop do
    puts("=> What's the first number?")
    number1 = gets.chomp
    break if valid_number?(number1)
    prompt('invalid_number')
  end

  loop do
    puts("=> What's the second number?")
    number2 = gets.chomp
    break if valid_number?(number2)
    prompt('invalid_number')
  end

  # PRINT User Instructions for Operator
  operator_prompt = <<~MSG # HereDoc delimiter
What operation would you like to perform?:
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  puts("=> #{operator_prompt}")

  # GET Operator, VALIDATE Operator
  operator = nil

  loop do
    operator = gets.chomp
    break if %w[1 2 3 4].include?(operator)
    puts('=> Must choose 1, 2, 3 or 4')
  end

  # RUN Operation
  result =  case operator
            when '1' then number1.to_i + number2.to_i
            when '2' then number1.to_i - number2.to_i
            when '3' then number1.to_i * number2.to_i
            when '4' then number1.to_i / number2.to_i
            end

  # PRINT Result
 puts("=> #{operation_to_message(operator)} the numbers...")
 puts("=> Result = #{result}")

  # RESTART?
  prompt('restart?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# EXIT
prompt('goodbye')
