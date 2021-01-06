# PROBLEM:
# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more 
# letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Understanding the problem:
# input:
# A string of one or more words
# output:
# The same string but with words of size 5 or greater reversed

# Explicit requirements:
# Reverse 5 letter+ words
# Strings will be one or more words
# Discard extra spaces for strings of one word
# Only letters and spaces

# Implicit requirements:
# No empty strings

#Data structures:
# a string
# An array of split words to consider the size of each word and reverse it

# Algorithm:
# split string into an array of words
# use map!
  # if wordsize >= 5 return word.reverse
  # else return word
# After covering entire array, join the mapped array with ' ' delimiters


def reverse_words(string)
  words_array = string.split
  words_array.each do |word|
    word.reverse! if word.size >= 5
  end
  words_array.join(' ')
end



# Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS