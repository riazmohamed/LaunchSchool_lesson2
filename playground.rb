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

START
# Given collection of string in an array

SET result = [] # This is an empty array
SET iterator = 1
SET saved_element = value within the collection of strings at space 1

WHILE iterator is not even
  result.push(the value within the collection at the space "iterator")
ELSE
  break

  iterator = iterator + 1

PRINT result

END
