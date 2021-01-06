# # Write a method that takes a year as input and returns the century. The 
# return value should be a string that begins with the century number, and 
# ends with st, nd, rd, or th as appropriate for that number.

# # New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# The problem:
# Input:
# an integer

# Output:
# a string

# Explicit requirements:
# Append the appropriate suffix to each return string
# New centuries begin on xx01 years

# Implicit requirements:
# years ending in 00 are one century lower than their first digit(s)

# Data Structure:
# a string

# Algorithm:
# Add 99 to the year to insure the first digit(s) are in the correct 
# century
# divide the year by 100 to get the century number
# st centuries:1 1, 21, 31, etc.
# nd centuries:2, 22, 32, etc.
# rd centuries:3, 23, 33, etc.
# the centuries:4-20, 24-30, 34-40, etc. (the else case)

# if century is a 11, 12, or 13 append th
# if century number ends in 1, append st
# if century number ends in 2, append nd
# if century number ends in 3, append rd
# else append th

def suffix_generator(century)
  return "th" if century[-2] == "1"
  return "st" if century[-1] == "1"
  return "nd" if century[-1] == "2"
  return "rd" if century[-1] == "3"
  "th"
end

def century(year)
  century = (year + 99) / 100
  century = century.to_s
  century + suffix_generator(century)
end

# Test cases:

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
