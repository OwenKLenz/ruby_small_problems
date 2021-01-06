# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# input:
# String

# output:
# Hash

# Rules: 
# Strings will contain 1 or more words
# hash keys should be word lengths(integer)
# values should be the number words with each length
# Spaces dicate word separation

# Algorithm:
# initialize a return hash with default values of 0
# split string into array of words
# Iterate over words array (try each_with_object(hash))
#   Set hash[word.length] += 1
# each_with_object returns the hash

def word_sizes(string)
  words = string.split
  
  words.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.length] += 1
  end
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 
                                                              7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}