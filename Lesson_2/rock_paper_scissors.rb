=begin
------------------------------------------------------------------------------------------
REQS
----
- Create a 'Rock Paper Scissors (Lizard Spock)' program for Player vs. Computer
- Enable user to write abbreviations (e.g. 'R' for 'Rock')
- Enable mmultiple games to be played in a session
- Keep track of score
------------------------------------------------------------------------------------------
=end


# CONSTANTS
VALID_CHOICES = ['R', 'P', 'Sc', 'L','Sp']
FULLWORD_CHOICES = ['Rock', 'Paper','Scissors', 'Lizard', 'Spock']


# METHODS
def prompt(message)
  puts("=> #{message}")
end

def generate_choice(choice)
  index = VALID_CHOICES.index(choice)
  FULLWORD_CHOICES[index]
end

def win?(first, second)
  (first == 'Rock' && second == 'Scissors') ||
  (first == 'Paper' && second == 'Rock') ||
  (first == 'Scissors' && second == 'Paper') ||
  (first == 'Rock' && second == 'Lizard') ||
  (first == 'Paper' && second == 'Spock') ||
  (first == 'Scissors' && second == 'Lizard') ||
  (first == 'Lizard' && second == 'Paper') ||
  (first == 'Lizard' && second == 'Spock') ||
  (first == 'Spock' && second == 'Rock') ||
  (first == 'Spock' && second == 'Scissors')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!\n\n")
  elsif win?(computer, player)
    prompt("Computer won!\n\n")
  else
    prompt("It's a tie!\n\n")
  end
end

# CODE
# -----

# INITIALIZE score
player_score = 0
computer_score = 0

# WELCOME user
puts("\n")
prompt("Welcome to 'RPSSL' game!")
prompt("------------------------")
prompt("Rules can be found at:
https://www.wikihow.com/Play-Rock-Paper-Scissors-Lizard-Spock \n")
prompt("------------------------\n\n")

# BEGIN operation
loop do

  # GET user choice
  player_input = nil
  player_choice = nil

  loop do
    prompt("Choose one:\n-#{FULLWORD_CHOICES.join("\n-")}\n")
    prompt("('R' for Rock, 'P' for Paper, 'Sc' for Scissors, 'Sp' for Spock, 'L' for Lizard)")
    player_input = gets.chomp.downcase.capitalize!
    break if VALID_CHOICES.include?(player_input)
    prompt("That's not a valid choice.\n")
  end
  
  player_choice = generate_choice(player_input)

  # GET computer choice
  computer_choice = FULLWORD_CHOICES.sample

  # PRINT result
  prompt("You chose: #{player_choice}\n Computer chose: #{computer_choice}\n")
  display_result(player_choice, computer_choice)
  
  # UPDATE score
  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end

  # PRINT score
  prompt("Score: You: #{player_score}; Computer: #{computer_score}")

  # LOOP?
  prompt("Play again? ('y' or 'n')")
  play_again = gets.chomp.downcase
  break if play_again.start_with?('n')
end

# END
prompt('Thank you for playing!')
