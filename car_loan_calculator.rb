# car_loan_calculator.rb

# => required information
# 1. the loan amount
# 2. the Annua Percentage Rate (APR)
# 3. the loan duration
#
# => from the above the following information needs to be calculated
# 1. monthly interest rate
# 2. loan duration in months
#
# Given formulae for calculation =====> m = p * (j / (1 - (1 + J) ** (-n)))
# => m = monthly payment
# => p = loan amount
# => j = monthly interest rate
# => n = loan duration in months

# Pseudo code
# - get the amount of loann needed from the user
# - display the monthly interest rate as %5
# - prompt the user to select 36, 42 or 60 month repayment
# - based on the above info calculate the monthly payment for the agreed term.
# - print the details

def prompt(message)
  puts "=> #{message}"
end

def valid_name?(name) # condition to use strings for names
  if name.to_i.to_s != '0'
    false
  elsif name == '0'
    false
  else
    true
  end
end

def valid_loan_amount?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  Integer(num) rescue false
end

def float?(num)
  Float(num) rescue false
end

# m = p * (j / (1 - (1 + j)**(-n)))
def loan_calculation(amount_borrowed, loan_duration)
  monthly_payment = amount_borrowed.to_f *
                    ((0.05 / 12) /
                    (1 - (1 + (0.05 / 12))**-loan_duration.to_i))
  monthly_payment
end

prompt("Please enter your name: ")
user_name = ''
loop do
  user_name = gets.chomp
  if valid_name?(user_name)
    prompt("Hi #{user_name}, welcome to Disco Online Banking!")
    break
  else
    prompt("Hmm...That doesn't seem right! Please enter a valid name: ")
  end
end

prompt("How much would you like to take a loan on? ")
loan_amount = ''
loop do
  loan_amount = gets.chomp
  if valid_loan_amount?(loan_amount)
    break
  else
    prompt("Hmm... That dont seem right! Please enter a valid amount to lend: ")
  end
end

prompt("You have requested #{loan_amount} at %5 APR")
# annual interest rate = 5% APR
# monthly interest rate = APR / 12 = (0.05 / 12)

loan_term_prompt = <<-MSG
  Please choose the following loan term
  1) 36 months
  2) 42 months
  3) 60 months
MSG

prompt(loan_term_prompt)

loan_term = gets.chomp

case loan_term
when '1'
  prompt("You have chosen 36 months loan term")
  loan_duration = 36
  puts "Your monthly payment for 36 months is
        $#{loan_calculation(loan_amount, loan_duration)}"
when '2'
  prompt("You have chosen 42 months loan term")
  loan_duration = 42
  puts "Your monthly payment for 42 months is
        $#{loan_calculation(loan_amount, loan_duration)}"
when '3'
  prompt("You have chosen 60 months loan term")
  loan_duration = 60
  puts "Your monthly payment for 60 months is
        $#{loan_calculation(loan_amount, loan_duration)}"
else
  prompt("Please make a valid selection 1) 2) or 3)")
end
