# In the previous two exercises, you developed methods that convert simple 
# numeric strings to signed Integers. In this exercise and the next, you're 
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do 
# this the old-fashioned way and construct the string by analyzing and 
# manipulating the number.

# The problem:
# Input:
# An integer
# Output:
# A string

# Explicit requirements:
# No cheating!
# Work with positive integers

# Implicit requirements:

# Data Structure:
# Integer and String

# Algorithm:
# Convert the number to an array with Integer#digits
# push each DECIMAL_HASH[element] to a return string

DECIMAL_HASH = { 0 => "0",
                 1 => "1",
                 2 => "2",
                 3 => "3",
                 4 => "4",
                 5 => "5",
                 6 => "6",
                 7 => "7",
                 8 => "8",
                 9 => "9" }

def integer_to_string(int)
  num_string = ''
  num_array = int.digits.revers

  num_array.each do |i|
    num_string << DECIMAL_HASH[i]
  end
  num_string
end

def integer_to_string(int)
  num_string = ''
  num_array = int.digits.reverse
  counter = 0
  loop do
    break if counter == num_array.size
    current_num = num_array[counter]
    num_string << DECIMAL_HASH[current_num]
    counter += 1
  end
  num_string
end

# Test Cases

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# Methods that mutate but don't include ! in the name

# String:
# clear
# concat/<<
# replace