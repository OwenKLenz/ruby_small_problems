# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Input: An integer
# Output: An integer (a difference of sums)

# Considerations:
# 0 and 1 return 0

# Data structures:
# A range

# Algorithm:
# create a range from 1 to arg value and inject addition, then square it
# Store that in a variable

# inject on the range with a block
# Block:
#   memo tracks the sum after each iteration
#   add to the memo, the current value squared
# Save inject's return value in a new variable

# return the difference of the two variables

def sum_square_difference(int)
  # square_of_sums = (0..int).inject(:+) ** 2
  # sum_of_squares = (0..int).inject(0) { |memo, value| memo + value ** 2 }
  # return square_of_sums - sum_of_squares

  (0..int).inject(:+) ** 2 - (0..int).inject(0) { |sum, n| sum + n ** 2 }
end

def sum_square_difference2(int)
  arr = ((1..int).each_with_object([0, 0]) do |n, memo|
    memo[0] += n
    memo[1] += n ** 2
  end)
  arr[0]**=2
  arr.inject(:-)
  
end
p sum_square_difference2(10)
p sum_square_difference(4) == 70

# Examples:
p sum_square_difference(0) == 0
p sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150