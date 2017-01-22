# rps_bonus_features.rb

# Pseudo code
# - if the player wins then his score is +1
# - else if the compter wins then computers score is +1
# - else if it is a tie then score = +0 for both

# 1. Add Lizard and Spock into your code

# 3. keep score of how many times computer has won

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(player1, player2)
#   (player1 == 'rock' && player2 == 'scissors') || # rock smashes scissors
#     (player1 == 'rock' && player2 == 'lizard') || # rock smashses lizard
#     (player1 == 'paper' && player2 == 'rock') || # paper engulfs rock
#     (player1 == 'paper' && player2 == 'spock') # paper disproves spock
#     (player1 == 'scissors' && player2 == 'paper') || # scissors cut paper
#     (player1 == 'scissors' && player2 == 'lizard') || # scissors cut lizard
#     (player1 == 'lizard' && player2 == 'spock') || # lizard poisons spock
#     (player1 == 'lizard' && player2 == 'paper') || # lizard eats paper
#     (player1 == 'spock' && player2 == 'rock') || # spock burns rock
#     (player1 == 'spock' && player2 == 'scissors') || # spock burns scissors
# end

def win?(player1, player2)
  (player1 == 'rock' && %w(scissors lizard).include?(player2)) ||
    (player1 == 'paper' && %w(rock spock).include?(player2)) ||
    (player1 == 'scissors' && %w(paper lizard).include?(player2)) ||
    (player1 == 'lizard' && %w(spock paper).include?(player2)) ||
    (player1 == 'spock' && %w(rock scissors).include?(player2))
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

player_score = 0
computer_score = 0
loop do
  choice = ''
  player_input = ''
  loop do
    choose_option = <<-MSG
    Please select from one of the following options
    Type 'r' for 'rock'
    Type 'p' for 'paper'
    Type 'sc' for 'scissors'
    Type 'l' for 'lizard'
    Type 'sp' for 'spock'
    MSG

    # prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt(choose_option)
    player_input = Kernel.gets().chomp()

    choice = case player_input
             when 'r'
               VALID_CHOICES[0]
             when 'p'
               VALID_CHOICES[1]
             when 'sc'
               VALID_CHOICES[2]
             when 'l'
               VALID_CHOICES[3]
             when 'sp'
               VALID_CHOICES[4]
             end

    if VALID_CHOICES.include?(choice.downcase)
      prompt("#{choice} selected!")
      break
    else
      prompt("Seems like something is not right! Make a valid selection")
    end
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt("You chose : '#{choice}', computer chose : '#{computer_choice}'")

  if win?(choice, computer_choice)
    player_score += 1
    player_score
  elsif win?(computer_choice, choice)
    computer_score += 1
    computer_score
  end

  prompt("Score - You: #{player_score}, Computer: #{computer_score}")

  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good Bye!")
