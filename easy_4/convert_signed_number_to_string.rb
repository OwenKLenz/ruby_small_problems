# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.
# Write a method that takes an integer, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# The problem:
# Input:
# postive or negative integer

# Output:
# A string

# Explicit requirements:

# Implicit requirements:

# Data Structure:

# Algorithm:
# What happens when you use Integer#digits on a negative number? Nothing good.

# if number < 0
#   multiply number by -1
#   set negative boolean to true
# integer_to_string the positive number
# prepend '-' if negative else '+'
# return the string


DECIMAL_HASH = { 0 => "0",
                 1 => "1",
                 2 => "2",
                 3 => "3",
                 4 => "4",
                 5 => "5",
                 6 => "6",
                 7 => "7",
                 8 => "8",
                 9 => "9", }

def integer_to_string(int)
  num_string = ''
  num_array = int.digits.reverse

  num_array.each do |i|
    num_string << DECIMAL_HASH[i]
  end
  num_string
end

def signed_integer_to_string(number)
  neg = false
  
  return '0' if number == 0
  
  if number < 0
    neg = true
    number *= -1
  end
  
  neg ? num_string = '-' : num_string = '+'
  num_string << integer_to_string(number)
  num_string
end

def signed_integer_to_string2(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when 1 then "+#{integer_to_string(number)}"
  else integer_to_string(number)
  end
end


# Refactoring:
# if number != 0
# return ternary operator 

def signed_integer_to_string3(number)
  return "0" if number == 0
  "#{number < 0 ? '-' : '+'}#{integer_to_string(number < 0 ? -number : number)}"
end

# Test Cases

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

p signed_integer_to_string2(4321) == '+4321'
p signed_integer_to_string2(-123) == '-123'
p signed_integer_to_string2(0) == '0'

p signed_integer_to_string3(4321) == '+4321'
p signed_integer_to_string3(-123) == '-123'
p signed_integer_to_string3(0) == '0'