# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a 
# character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".


# The Problem:
# Input:
# A string
# Output:
# An integer interpolated to a string

# Explicit requirements:
# Accepts one or more words
# Don't count spaces

# Implicit requirements:
# Empty strings or all whitespace strings should return 0

# Data Structure:
# Strings, possibly split to an array
# Integer number of characters

# Algorithm:
# Prompt user for string
# split string by character (String#chars)
# strip whitespace
# chars = array.length
# Output string

puts "Enter some text:"
print "=> "
string = gets.chomp
characters = 0
string.split.each { |word| characters += word.length }

puts "The text \"#{string}\" contains #{characters} characters."