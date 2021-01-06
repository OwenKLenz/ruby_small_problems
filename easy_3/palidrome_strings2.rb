# Write another method that returns true if the string passed as an argument is 
# a palindrome, false otherwise. This time, however, your method should be 
# case-insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in 
# the previous exercise.

# The problem:
# Input:
# String
# Output:
# Boolean

# Explicit requirements:
# Ignore case (downcase)
# Ignore punctuation
# Implicit requirements:

# Data Structure:
# Boolean and string, possibly array to work with the string (stripping non 
# alphanum chars?)

# Algorithm:
# Remove non alphanum chars
#   use delete with a character range covering all punctuation
#   Example "Madam, I'm Adam!"
# compare with reverse

# Delete gets passed a range of all possible keyboard ASCII characters
# Then a-z and 0-9 are omitted from that range
def real_palindrome?(array)
  array = array.downcase.delete(" -~,", "^a-z", "^0-9")
  array == array.reverse
end

# Test cases

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false