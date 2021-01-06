# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# The problem:
# Input:
# A string

# Output:
# An integer

# Explicit requirements:
# Determine the ASCII values of each character and sum them

# Implicit requirements:
# Should return 0 if string is empty
# Spaces have value too

# Data Structure:
# String argument
# Convert string to Array
# return Integer sum

# Algorithm:
# break string into characters
# iterate over characters
#   add the return value of char.ord to a running total variable
# return the total

def ascii_value(string)
  string.chars.inject(0) { |sum, char| sum += char.ord }
end

# Test cases:
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
