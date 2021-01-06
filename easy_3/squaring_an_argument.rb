# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the exponentiate of its argument (the exponentiate is the result of
# multiplying a number by itself).

# Example:

# exponentiate(5) == 25
# exponentiate(-8) == 64

# The problem:
# Input:
# 1 numeric argument 

# Output:
# exponentiate of the the argument

# Explicit requirements:
# Use multiply_two_numbers method
# Return the exponentiate of the argument using multiply_two_numbers

# Implicit requirements:
# pass the argument to multiply_two_numbers twice

# Data Structure:
# Integer or float

# Algorithm:
# call multiply two numbers and pass it the number argument twice

def multiply(num1, num2)
  num1 * num2
end

def exponentiate(num, exponent=2)
  if exponent < 0
    num = 1/num.to_f
    exponent = exponent.abs
  end
  output = 1
  exponent.times do
    output = multiply(output, num)
  end
  output
end

p exponentiate(1, 3)
p exponentiate(12, 0)
p exponentiate(0)
p exponentiate(-5, 9)
p exponentiate(-12.123, 4)
p exponentiate(1000, -3)
p exponentiate(-10, -2)
p exponentiate(3, -12)