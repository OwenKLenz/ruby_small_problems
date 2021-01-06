# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# input:
# String
# output:
# a hash

# rules:
# Count the number of each of the following character types:
# uppercase
# lowercase
# neither
# increment each types value in a hash

# algorithm:
# set hash to a new hash that defaults the value to 0
# iterate over the string characters
#   if the character == itself upcase
#     increment hash on uppercase
#   etc...

def valid_upcase?(char)
  char == char.upcase && char != char.swapcase
end

def valid_downcase?(char)
  char == char.downcase && char != char.swapcase
end

def letter_case_count(str)
  counter_hash = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if valid_upcase?(char)
      counter_hash[:uppercase] += 1
    elsif valid_downcase?(char)
      counter_hash[:lowercase] += 1
    else
      counter_hash[:neither] += 1
    end
  end
  counter_hash
end


# Examples

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }