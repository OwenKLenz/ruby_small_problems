# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# input:
# A string
# output:
# A string

# Rules:
# Swap first and last letters of each words
# 1 letter words remain unchanged

# Algorithm:
# split the string
# iterate over split string
#   store first letter in placeholder variable
#   using index reference [0 and -1] first = last
#   last equals placeholder
# rejoin string with spaces

def swap(words)
  word_array = words.split
  
  word_array.each do |word|
    temp = word.[](0)
    word[0] = word.[](-1)
    word[-1] = temp
  end
  word_array.join(' ')
end

# Test Cases:

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration:
# This solution would not work because a, b = b, a would simply return an array containing the first and last letters, with their order reversed.Then map would return an array of just the first and last characters of each word.
# Since map uses the return value of the block for each array element, you need to use a solution that returns the whole word.