# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Input: string (with or without parentheses)
# Output: boolean

# Corner Cases:
# empty string should return true
# no parentheses should return true

# Rules:
# First instance should be '(' (beginning with ')' returns false)
# Keep track of the level of parentheses
# Hint: increment and decrement a counter depending on value of parenthesis. If value ever goes below 0 or isn't 0 at end of string return false

# Data Structures:
# Input string
# array to process parentheses

# Algorithm:
# INIT par counter to 0
# iterate over characters
# if we find a '(', increment counter or ')' decrement counter
#   if counter < 0 return false
# After iterating
#   return true if counter is 0 otherwise, false

def balanced?(string)
  par_counter = string.chars.inject(0) do |level, char|
    level += 1 if char == '('
    level -= 1 if char == ')'
    return false if level < 0
    level
  end
  par_counter == 0
end


# INIT hash of array for keys (, [, {, ', ",) and tally for level counter for values


#   quote characters:
#     count the number of each, if even procede, else return false

# ITERATE over characters
#   Non-quote characters
#   for each character iterate over hash keys
#     if hash on key on 0 equals character hash on key += 1
#     if hash on key on 1 equals character hash on key -= 1
#   after each character, iterate over hash and if value is < 0, return 0
#   at end of string iterate over values again and if all values are zero return true else return false

  # WHAT ABOUT APOSTROPHES?
def balanced?(string)
  pair_char_hash = { %w(( )) => 0, %w([ ]) => 0, %w({ }) => 0 }
  return false unless string.count("'").even? && string.count('"').even?
  
  string.chars.each do |char|
    pair_char_hash.each do |k, v|

      pair_char_hash[k] += 1 if k[0] == char
      pair_char_hash[k] -= 1 if k[1] == char
      return false if pair_char_hash.values.any? { |value| value < 0 }
    end

  end
  pair_char_hash.values.all? { |value| value.zero? }
end

p balanced?("{}P{}")
p balanced?("'\"({})\"'")
# Examples:

p balanced?('') == true
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).