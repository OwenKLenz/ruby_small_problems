# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

# Understand the Problem:
  # Input:
  # An integer
  # Output:
  # A string
  
  # Explicit requirements:
  # Strings must start with 1
  # str.lenth == integer argument
  
  # Implicit requirements:
  # Integer argument will be greater than 0

# Data Structure:
# String

# Algorithm:
# Initialize empty return string
# initialize one_or_zero variable to "1"
# integer.times do
# if times % 2 == 0
# return_string << '1'
# else return_string << '0'
# Return string


def stringy(integer, zero_or_one='1')
  str = ''
  integer.times do |ctr|
    ctr += 1 if zero_or_one == '0'
    ctr % 2 == 0 ? str << '1' : str << '0'
  end
  str
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.