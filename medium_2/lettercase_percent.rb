# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Input: a string of alpha and non alpha characters
# Output: a hash of symbol keys and integer values

# Data structures:
# Hash for output, string for input, 

# Rules: 
#   Spaces are included and are "neither" characters

# Algorithm:
  # init size to size of string
  # init hash to empty hash
  
  # hash on lowercase symbol set to return value of count of lowercase letters divided by size
  # hash on uppercase symbol set to return value of count of uppercase letters divided by size
  # hash on neither will be set to return value of 100 minus hash on lower and upper (values)
  
  # return hash
  
def letter_percentages(string)
  size = string.size
  ratio_hash = {}
  ratio_hash[:lowercase] = (string.count('a-z').fdiv(size) * 100)
  ratio_hash[:uppercase] = (string.count('A-Z').fdiv(size) * 100)
  ratio_hash[:neither] = (100 - ratio_hash[:lowercase] - 
                        ratio_hash[:uppercase])
                         
  ratio_hash.map { |k, v| [k, v.round(2)] }.to_h
end


# def letter_percentages(string)
#   # binding.pry
#   ratio_hash = Hash.new { |k, v| k[v] = [0, string.size] }
#   string.chars.each do |char|
#     char =~ /[a-zA-Z]/ ? (char =~ /[a-z]/ ? ratio_hash[:lowercase][0] += 1 : ratio_hash[:uppercase][0] += 1) : ratio_hash[:neither][0] += 1
#   end
#   ratio_hash.each_with_object({}) do |(k, v), hash| 
#     hash[k] = v.round == v ? (v.inject(:fdiv) * 100).round 
#   end
# end
# p letter_percentages('abcd1A')
# Examples

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}