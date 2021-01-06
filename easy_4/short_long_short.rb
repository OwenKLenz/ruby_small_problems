# Write a method that takes two strings as arguments, determines the longest of 
# the two strings, and then returns the result of concatenating the shorter 
# string, the longer string, and the shorter string once again. You may assume 
# that the strings are of different lengths.

# The problem:
# Input:
# 2 strings

# Output:
# A string

# Explicit requirements:
# Concatenate the shorter string + longer string + shorter string
# return the result
# Strings will be of different lengths

# Implicit requirements:
# Strings can be empty

# Data Structure:
# Strings

# Algorithm:
# Test string lengths
#   length method 
# add short string to long string to short string

def short_long_short1(str1, str2)
  strings = str1.length < str2.length ? [str1, str2] : [str2, str1]
  strings[0] + strings[1] + strings[0] 
end

def short_long_short2(str1, str2)
  strings = str1.length < str2.length ? [str1, str2, str1] : [str2, str1, str2]
  p strings.join
end

# Test cases:

p short_long_short1('abc', 'defgh') == "abcdefghabc"
p short_long_short1('abcde', 'fgh') == "fghabcdefgh"
p short_long_short1('', 'xyz') == "xyz"

p short_long_short2('abc', 'defgh') == "abcdefghabc"
p short_long_short2('abcde', 'fgh') == "fghabcdefgh"
p short_long_short2('', 'xyz') == "xyz"