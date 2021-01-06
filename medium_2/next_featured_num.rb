# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

# Input: integer
# Output: Integer (next "featured number") OR an error message

# Considerations:
# Negative numbers should work
# Once you reach more than 10 digits, no value is possible, return error message

# Data structure:
# None

# Algorithm:
# Count one by one from argument
# for each value: If it's evenly divisible by 7, odd and uniqed array of digits is same as uniqued array
# If current number has more than 10 digits, return error message
#   return current number
#   otherwise, keep iterating

def featured(integer)
  return "Error: There is no possible number that fulfills those requirements" if integer >= 9_876_543_210
  counter = integer + 1
  counter += 1 until counter % 7 == 0 && counter.odd?
  
  loop do
    return counter if counter.digits.uniq.size == counter.digits.size
    counter += 14
  end
end


# Examples:

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
989_999_999
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements