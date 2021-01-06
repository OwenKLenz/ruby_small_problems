# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

# The problem:
# Input:
# An integer

# Output:
# A boolean

# Explicit requirements:
# return true for palindrome numbers

# Implicit requirements:
# Question: dealing with negative numbers?

# Data Structure:
# Integer and boolean

# Algorithm:
# Convert integer to string
# compare it to reversed string

# Assuming negative numbers can be considered palindromes:
#   Take absolute value of integer and then stringify and compare

def palindromic_number?(int)
  string_num = int.abs.to_s
  string_num == string_num.reverse
end

def palindromic_number2?(int)
  array_num = int.abs.digits
  array_num == array_num.reverse
end


# Examples:

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(-34543) == true
p palindromic_number?(01010) == true


p palindromic_number2?(34543) == true
p palindromic_number2?(123210) == false
p palindromic_number2?(22) == true
p palindromic_number2?(5) == true
p palindromic_number2?(-34543) == true

# Dealing with numbers containing leading 0s:
# Numbers with leading zeros are interpreted as octal values and are then 
# converted to integers. So a number like 00100 would not return true as a 
# palindrome