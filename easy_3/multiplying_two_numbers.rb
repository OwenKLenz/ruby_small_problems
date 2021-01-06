# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:

# multiply(5, 3) == 15

# The problem:
# Input:
# Two numbers (float or int)
# Output:
# Product of two numbers (an int or float)

# Explicit requirements:
# Multiply 2 numbers
# return result

# Implicit requirements:
# accept and handle floats properly

# Data Structure:
# Integer and/or float

# Algorithm:
# Perform multiplication on two nums


def multiply_two_numbers(num1, num2)
  num1 * num2
end

p multiply_two_numbers(2, 2)
p multiply_two_numbers(2, 2.2)
p multiply_two_numbers(12.8, 5.1)
p multiply_two_numbers(0, 10)