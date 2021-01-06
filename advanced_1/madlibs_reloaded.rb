# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

# Input: Text from a file
# Output: Mad libs text with various words randomly interpolated in the appopriate places

# Algorithm:
#   Formatting text-
#     :verb, :noun, etc. in appropriate places

#   Read text in from a file
#     file.read(filename)
#   save the text in a variable
#   iterate over the words 
#   for each verb, noun, etc. interpolate a random word chosen from a collection of of them stored in a hash
#   rejoin the text and output it

# Madlibs
word_hash = {
  "noun" => %w(cheese orangutan blue_footed_booby eyeball earlobe carburetor), 
  "verb" => %w(eat smash flagilate imagine consume sag), 
  "adjective" => %w(happy slippery salacious imaginary nauseating loquacious scintillating ineffable), 
  "adverb" => %w(wonderfully voraciously sinfully)}


text = File.read('hobbit.txt').split

text.each_with_index do |word, index|
  word_hash.keys.each do |key|
    if word.include?(key)
      text[index].gsub!(key, word_hash[key].shuffle!.pop)
    end
    # text[index] = word_hash[word.to_sym].sample
  end
end

puts text.join(' ').gsub('_', ' ')