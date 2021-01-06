# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

# algorithm:
# split string into words
# iterate over words with map
#   return word with word.length.to_s appended to it (plus space)

def word_lengths(string)
string.split.map do |word|
    word + ' ' + word.length.to_s
  end
end

# or...

def word_lengths2(string)
  words_array = string.split
  lengths = []
  words_array.each do |word|
    lengths << word.length
  end
  return_array = []
  words_array.zip(lengths) do |word_and_length|
    return_array << word_and_length.join(' ')
  end

  return_array
end

p word_lengths2("cow sheep chicken")
# Examples

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []


p word_lengths2("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths2("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths2("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths2("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths2("") == []