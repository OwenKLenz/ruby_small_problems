# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, the bonus 
# should be half of the salary. If the boolean is false, the bonus should be 0.

# The problem:
# input:
# positive integer
# boolean

# output:
# integer bonus

# Explicit rules:
# return 0 for a boolean of false
# return salary/2 for  a boolean of true
# integer will be positive

# Questions:
# What about dealing with salaries that don't result in float when / 2?

# Data Structure:
# Integer and Float

# Algorithm:
# if boolean == false return 0
# else return salary.to_f/2

def calculate_bonus(salary, bool)
  bool ? salary / 2 : 0
end


# Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.