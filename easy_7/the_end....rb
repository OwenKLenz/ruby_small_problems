# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Examples:

# input:
# a string

# output:
# a string containing the next to last word in the input string

# rules:
# words can contain any non whitespace characters
# strings contain at least two words
# find and return the 2nd to last word

# algorithm:
# split string into words
# return words[-2]

def penultimate(words)
  words.split[-2]
end

# or...

def penultimate2(words)
  words.split.pop(2).first
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p penultimate2('Launch School is great!') == 'is'

# Further Exploration

# Our solution ignored a couple of edge cases because we explicitly stated that you didn't have to handle them: strings that contain just one word, and strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.


# rules:
# round an even number of words to the lower word (integer division/floor)
# one word strings should return the only word
# two word string take the first word
# no word strings return nil

# algorithm:
# split string into words
# divide words.size by 2 to get middle value rounded down
# return element at middle value index

def middle_word(string)
  words =  string.split
  middle = (words.size) / 2
  words[middle]
end

# Test Cases:
p middle_word("cut down the tallest tree in the forest with a herring") == "in"
# a string with an even number of words
p middle_word("get me a herring!") ==  'me'
# a string with one word
p middle_word("albatross") == "albatross"
# a string with two words
p middle_word('hi there') == 'hi'
# a string with no words?
p middle_word('') == nil