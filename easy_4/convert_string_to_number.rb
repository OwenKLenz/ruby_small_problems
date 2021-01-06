# The String#to_i method converts a string of numeric characters (including an 
# optional plus or minus sign) to an Integer. String#to_i and the Integer 
# constructor (Integer()) behave similarly. In this exercise, you will create a 
# method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about 
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. Your method should do this the old-fashioned
# way and calculate the result by analyzing the characters in the string.

# The problem:
# Input:
# A string of numbers
# Output:
# An integer

# Explicit requirements:
# Convert the string to the appropriate Integer object
# Don't use to_i or Integer()

# Implicit requirements:

# Data Structure:
# Integers and strings
# possible an array with the string split into characters

# Algorithm:
# Create a hash of string integers 0-9 mapped to equivalent number values 0-9
# split string_num into characters and iterate over it
# Set each character equal to it's hash value

  DECIMAL_HASH = { "0" => 0,
                  "1" => 1,
                  "2" => 2,
                  "3" => 3,
                  "4" => 4,
                  "5" => 5,
                  "6" => 6,
                  "7" => 7,
                  "8" => 8,
                  "9" => 9 }
                  
  HEXADECIMAL_HASH = { "0" => 0,
                      "1" => 1,
                      "2" => 2,
                      "3" => 3,
                      "4" => 4,
                      "5" => 5,
                      "6" => 6,
                      "7" => 7,
                      "8" => 8,
                      "9" => 9,
                      "a" => 10,
                      "b" => 11,
                      "c" => 12,
                      "d" => 13,
                      "e" => 14,
                      "f" => 15 }

def string_to_integer(string_num)
  string_num.chars.inject(0){ |number, char| number = number * 10 + 
                              DECIMAL_HASH[char] }
end


# Hexadecimal
def hexadecimal_to_integer(string_hex_num)
  string_hex_num.downcase.chars.inject(0){ |number, char| number = number * 16 +
                                           HEXADECIMAL_HASH[char] }
end
  
# Test Cases

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('78462834')
p string_to_integer('000')

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('fff')
p hexadecimal_to_integer('1000')