# pseudo_code_example.rb

# START
#
# # Given a collection of integers called "numbers"
#
# SET iterator = 1
# SET saved_number = value within numbers collection at space 1
#
# WHILE iterator < length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number
#
#   iterator = iterator + 1
#
# PRINT saved_number
#
# END

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num
    if saved_number >= num
      next
    else
      saved_number == num
    end
  end
  saved_number
end

numbers =  [1, 2, 3, 4, 5, 6, 7]
puts find_greatest(numbers)

# --------------------------------------------
# A method that returns a sum of two integers

# PRINT "Please enter the first_number"
# GET first_number

# PRINT "Please enter the second_number"
# GET second_number

# PRINT "Do you want to add these two numbers? (y/n)"
# GET input
# IF input == 'y'
#   result = first_number + second_number
# ELSE
#   exit the program

# PRINT result

# --------------------------------------------
# A method that takes an array of strings and returns a string that is all those strings concatenated together

# START
# Given a collection of strings called words
#
# SET iterator = 1
# SET saved_word = value within the string collection at space 1.
#
# WHILE iterator < length of the strings
#   SET current_word = value within the string collection at space "iterator"
#   IF saved_word == current_word
#     go to the next iteration
#   ELSE
#     saved_word = current_word + 1
#
#   iterator = iterator + 1
#
# PRINT saved_word
# END
#
# (the actual solution)
#
# def add_word(words)
#   result = nil
#   result = words.first
#   words.each do |word|
#     if result == word
#       next
#     else
#       result = result + word
#     end
#   end
#   result
# end
#
# a = ["riaz", "ahamed", "naina", "mohamed"]
# puts add_word(a)
# --------------------------------------------
# A method that takes an array of integers and returns every other element within the array

def print_number(numbers)
  result = []
  count = 0
  numbers.each do |num|
    count = count + 1
    if count.even?
      next
    else
      result << num
    end
  end
  result
end

a = [1, 2, 3, 4, 5, 6]
puts print_number(a).inspect

# Pseudo code for the above example

# casual
# start a block/method called print_number which takes an array(numbers) as an argument
#   assign the value of result as an empty array
#   assign the value of the variable count = 0
#   iterate over the number array and assign each element in the array to the variable 'num'
#     increment the value of the variable 'count' by 1
#     if the value of count is even
#       move to the next element in the array or iteration
#     else
#       insert the value of 'num' into the empty array 'result'
#
#   return result

# formal

# START
# # Given collection of string in an array
#
# SET result = [] # This is an empty array
# SET iterator = 1
# SET saved_element = value within the collection of strings at space 1
#
# WHILE iterator is not even
#   result.push(the value within the collection at the space "iterator")
# ELSE
#   break
#
#   iterator = iterator + 1
#
# PRINT result
#
# END
