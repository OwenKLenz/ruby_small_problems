# In the modern era under the Gregorian Calendar, leap years occur in every year 
# that is evenly divisible by 4, unless the year is also divisible by 100. If 
# the year is evenly divisible by 100, then it is not a leap year unless the 
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that
# takes any year greater than 0 as input, and returns true if the year is a leap
# year, or false if it is not a leap year.

# The problem:
# Input:
# Integer greater than 0

# Output:
# Boolean

# Explicit requirements:
# argument is greater than 0
# Return true for leap years, false otherwise
# leap years are years divisible by 4 but not by 100 unless divisible by 400

# Implicit requirements:

# Data Structure:
# Boolean and Integer

# Algorithm:
# If year is not evenly divisible (%) by 4, return false
# if year is evenly divisible by 100
#   if year is not evenly divisible by 400 return false
# return true

# def leap_year?(year)
#   return false if year % 4 != 0
#   return false if year % 100 == 0 && year % 400 != 0
#   true
# end

# def leap_year?(year)
#   if year % 4 != 0
#     false
#   elsif year % 400 == 0
#     true
#   else  
#     year % 100 != 0
#   end
# end

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0 
end


# Test Cases
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true