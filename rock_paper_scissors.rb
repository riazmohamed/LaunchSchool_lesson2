# rock_paper_scissors.rb

VALID_CHOICES = ["rock", "paper", "scissors"]

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

test_method

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')
    "You won!"
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'paper')
    "Computer won!"
  else
    "It's a tie!"
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

  prompt("#{display_results(choice, computer_choice)}")

  prompt("You chose : '#{choice}' and the computer chose : '#{computer_choice}'")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good Bye!")
