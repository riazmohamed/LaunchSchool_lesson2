# rps_bonus_features.rb

# 1. Add Lizard and Spock into your code

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') || # rock smashes scissors
    (player1 == 'paper' && player2 == 'rock') || # paper engulfs rock
    (player1 == 'scissors' && player2 == 'paper') || # scissors cut paper
    (player1 == 'scissors' && player2 == 'lizard') || # scissors cut lizard
    (player1 == 'lizard' && player2 == 'spock') || # lizard poisons spock
    (player1 == 'lizard' && player2 == 'paper') || # lizard eats paper
    (player1 == 'rock' && player2 == 'lizard') || # rock smashses lizard
    (player1 == 'spock' && player2 == 'rock') || # spock burns rock
    (player1 == 'spock' && player2 == 'scissors') # spock burns scissors
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
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

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good Bye!")
