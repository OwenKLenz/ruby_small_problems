# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# input:
# Several user entered words

# output: 
# a string with the user's words interpolated in

# rules:
# prompt the user for a noun, a verb, and adjective and an adverb
# incorporate those into your story to fill in the blanks

# algorithm:
# initialize an array of word types (noun, verb, adjective, adverb)
# iterate over the array, prompting the user for each and storing them in a hash on the appropriate word type
# interpolate from the hash to complete the story/sentence

word_types = [:noun, :verb, :adjective, :adverb]
user_words = {}
vowels = %w(a e i o u)

word_types.each do |type|
  print "Enter #{vowels.include?(type.to_s[0]) ? "an" : "a"} #{type}: "
  user_words[type] = gets.chomp
end

puts "Would you like to #{user_words[:adverb]} #{user_words[:verb]} a "\
     "#{user_words[:adjective]} #{user_words[:noun]}?"
user_words[:abcd] = "abcd"
first, second, third = IO.readlines('madlibs.txt')
p user_words

var = 3
var2 = 4
p format("hello there %3.1f %5d owen", var, var2)
puts format(first, user_words)
puts format(second, user_words)
puts format(third, user_words)

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!