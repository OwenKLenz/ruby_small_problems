# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# The problem:
# Input:
# A string
# Output:
# boolean

# Explicit requirements:
# Pass in a string of
# case matters
# Implicit requirements:
# string can be multiple words or numbers
# Data Structure:
# String and boolean

# Algorithm:
# string == string.reverse

# OR without cheating:

# Hold beginning and ending indexes in variables 
# while beginning index < ending index
# compare both values return false if not equal
# increment begining index, decrement ending index
#return true at end

def palindrome?(string)
  first = 0
  last = string.length - 1
  
  while first < last do
    return false if string[first] != string[last]
    first += 1
    last -= 1
  end
  true
end


# def palindrome?(string)
#   string == string.reverse
# end




# Test cases
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?([['abc'], ['cheese'], :a, 12, :a, ['cheese'], ['abc']] ) == true