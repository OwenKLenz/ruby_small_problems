# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# input:
# An int

# output:
# an int

# Rules:
# The integer argument specifies the number of digits that you want to arrive at
# Return the number of iterations necessary to reach that number of digits (index number)
# if argument is 1, return 1 (the first fib number is 1 digit long)

# Algorithm:
# initialize an index variable to 1
# initialize fib1 to 0
# initialize fib2 to 1
# fib number length logic:
  # fib_number.to_s.length
# Create a loop, running through fib sequence
# On each loop
  # check length
  # return index if length equals argument
  # get next fib number
  # increment index

def find_fibonacci_index_by_length(digits)
  index = 1
  fib_prev = 0
  fib_current = 1

  loop do
    return index if fib_current.to_s.length == digits
    fib_prev, fib_current = fib_current, fib_current + fib_prev
    index += 1
  end
end

# Messing with recursion:
# MAX = 13
# def fib(num1, num2, index)
#   if num2 < MAX
#     p num2
#     index += 1
#     fib(num2, num2 + num1, index)
#   else
#     p index
#     p num2
#   end
# end
# fib(0, 1, 1)

# Examples:
p find_fibonacci_index_by_length(1) == 1
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
# You may assume that the argument is always greater than or equal to 2.
