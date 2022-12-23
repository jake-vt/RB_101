=begin
------------------------------------------------------------------------------------------
HINTS
-------
- Think about format of inputs (e.g. should the interest rate be expressed as 5 or .05, if you mean 5% interest?)
- How to convert Annual Percentage Rate (APR) into monthly interest rate.
- Be careful about the loan duration (are you working with months or years?)
------------------------------------------------------------------------------------------
=end

# METHODS
def prompt(message)
  puts "=> #{message}"
end

def valid_amount?(num)
  (num.to_i.to_s == num) && (num.to_i > 0)
end

# EXECUTION
# ----------
# WELCOME
prompt("Welcome to the Loan Calculator!")
prompt("-------------------------------")
name = nil

loop do
  prompt("What is your name?")
  name = gets.chomp
  name.empty? ? prompt("Make sure to enter a valid name.") : break
end

puts("=> Hi #{name}!")

# MAIN OPERATION

loop do
  loan_amount = nil
  loan_duration = nil
  input_interest_rate = nil

  # GET - LOAN AMOUNT
  loop do 
    loop do
      prompt("What is the loan amount? (in $)")
      loan_amount = gets.chomp
      break if valid_amount?(loan_amount)
      prompt("Make sure to enter a positive number only (no letters or special characters).")
    end

  # GET - LOAN DURATION
    loop do
      prompt("What is the loan duration? (in months)")
      loan_duration = gets.chomp
      break if valid_amount?(loan_duration)
      prompt("Make sure to enter a positive number only (no letters or special characters).")
    end

  # GET - INTEREST RATE
    loop do
      prompt("What is the APR% rate quoted? (number only, e.g. '7' for 7%)")
      input_interest_rate = gets.chomp
      break if valid_amount?(input_interest_rate)
      prompt("Make sure to enter a positive number only (no letters or special characters).")
    end
    
    confirm_msg = <<~MSG
    ----------------------------
    => To confirm, your values are:
      - Loan Amount: $#{loan_amount}
      - Loan Duration: #{loan_duration} months 
      - APR: #{input_interest_rate}%
     --------------------------- 
    => Is this correct? 'Y' to continue, 'N' to restart.
    MSG

    puts("#{confirm_msg}")
    confirm_input = gets.chomp
    break if confirm_input.downcase.start_with?('y')
  end

  # CALCULATE
  annual_interest_rate = input_interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12 
  monthly_payment = loan_amount.to_f * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**(-loan_duration.to_i)))

  # PRINT
  prompt("\nThe monthly payment (principal + interest) on this loan would be:\n$#{monthly_payment.round(2)}\n")

  # RESTART?
  prompt("Would you like to calculate another loan? ('Y' to restart)")
  restart = gets.chomp
  break unless restart.downcase.start_with?('y')

end

# GOODBYE
prompt("Thank you for using the Loan Calculator")
