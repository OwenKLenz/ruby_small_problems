# Write a method that takes one argument, a positive integer, and returns the 
# sum of its digits.

# The Problem:
# input:
# An integer

# output:
# An integer

# Explicit rules:
# Arguments are all positive

# Implicit rules:
# Arguments.length >= 1

# Data Structure:
# Integer and an array

# Algorithm:
# -convert number to a string and then to an array
# -Convert array elements to integers
  # -map! each element to_i
# -Sum all elements
# -return sum

def sum(integer)
  digits = integer.to_s.split('')
  digits.map! { |digit| digit.to_i }
  digits.inject(:+)
end

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Show Solution & Discussion