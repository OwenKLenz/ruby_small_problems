# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be empty
# and the numbers will always be positive integers.

# The problem:
# input:
# array of integers
# output:
# float

# Explicit requirements:
# No empty array arguments
# all numbers will be positive

# Implicit requirements:
# return value should be a float

# Data Structure:
# float- Nevermind, integer division is implied by the test cases

# Algorithm:
# initialize a sum variable to sum of array
# initialize a size variable to size of array
# return sum.to_f / size
def average(array)
  array.sum.to_f / array.size
end


# Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.