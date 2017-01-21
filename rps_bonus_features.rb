# rps_bonus_features.rb

# Pseudo code
 # if the player wins then his score is +1
 # else if the compter wins then computers score is +1
 # else if it is a tie then score = +0 for both
 #

# 1. Add Lizard and Spock into your code

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') || # rock smashes scissors
    (player1 == 'rock' && player2 == 'lizard') || # rock smashses lizard
    (player1 == 'paper' && player2 == 'rock') || # paper engulfs rock
    (player1 == 'scissors' && player2 == 'paper') || # scissors cut paper
    (player1 == 'scissors' && player2 == 'lizard') || # scissors cut lizard
    (player1 == 'lizard' && player2 == 'spock') || # lizard poisons spock
    (player1 == 'lizard' && player2 == 'paper') || # lizard eats paper
    (player1 == 'spock' && player2 == 'rock') || # spock burns rock
    (player1 == 'spock' && player2 == 'scissors') || # spock burns scissors
    (player1 == 'spock' && player2 == 'paper') # spock burns paper
end

player_score = 0
computer_score = 0
def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    player_score = player_score + 1
  elsif win?(computer, player)
    prompt("Computer won!")
    computer_score = computer_score + 1
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Seems like something is not right! Make a valid selection")
    end
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt("You chose : '#{choice}', computer chose : '#{computer_choice}'")
  prompt("Score - You: #{player_score}, Computer: #{computer_score}")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good Bye!")
