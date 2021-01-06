# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Plot Twist:
# Calculate the pattern of final digits in fibonacci series

# Input: A number to calculate the fibonacci sequence of
# Output: an array of digits (the pattern of final digits in fib numbers)

# Calculate all fib numbers up to n and append their final digits to an array

# [1, 3, 4, 5, 6, 1, 3...]

# Iterate over all digits
# append each digit to a comparison array
# if a slice of the original array from your current position to size of comparison is equal to comparison array ----- AND comparison is larger than 1 element

def last_fib_digit_array_generator(n)
  fib1, fib2 = 0, 1
  fib_array = []
  
  n.times do
    fib_array << fib2.digits[0]
    fib1, fib2 = fib2, fib1 + fib2
  end

  fib_array
end

def fib_pattern_calc(big_num)
  comparison_array = []
  last_digits = last_fib_digit_array_generator(big_num)

  last_digits.each_with_index do |n, index|
    if last_digits[index...index + comparison_array.size] == comparison_array &&
      comparison_array.size > 1
      return comparison_array
    end
    comparison_array << n
  end
end

p fib_pattern_calc(2500) == fib_pattern_calc(3001) # => true

p fib_pattern_calc(2500).size # => 60

# Now onto the actual problem using the repeating pattern of last digits of fibonacci numbers that was calculated above:

FIBONACCI_LAST_DIGIT_PATTERN = [1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 
                                7, 4, 1, 5, 6, 1, 7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 
                                8, 7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 
                                9, 5, 4, 9, 3, 2, 5, 7, 2, 9, 1, 0]
FIBONACCI_DIGIT_REPEAT_INDEX = 60

def fibonacci_last(num)
  FIBONACCI_LAST_DIGIT_PATTERN[(num - 1) % FIBONACCI_DIGIT_REPEAT_INDEX]
end
# Examples:

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745)

def fibonacci(nth)
  return 1 if nth <= 2
  last_two = [1, 1]
  3.upto(nth) { last_two << (last_two[-1] + last_two[-2])} 
  last_two.last
end

def fibonacci_last(nth)
  return fibonacci(60).digits.first if nth == 60

  fibonacci(nth % 60).digits.first
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745)