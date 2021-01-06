# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# input:
# A string

# output:
# A string of capitalized words

# rules:
# the first letter in each word should be uppercase
# the other letters should be lowercase
# all sequences of non space characters (including a single character) are words

# Questions:
# should multiple consecutive spaces/tabs be trimmed to one space or kept intact

# Algorithm:
# determine ascii value difference between upper and lowercase letters
# split string into words
# downcase each word
# if st character is a letter (in ('a'..'z'))
# .ord to get the ascii value of each first character (word[0])
# subtract the ascii value difference from the letter and set word[0] to that value
# join words back together with spaces

def word_cap(string)
  ascii_difference = 'a'.ord - 'A'.ord
  letters = 'a'..'z'

  cap_string = string.split.map do |word|
    word = word.downcase

    if letters.include?(word[0])
      word[0] = (word[0].ord - ascii_difference).chr
    end
    word
  end
  cap_string.join(' ')
end

def word_cap2(string)
  letters = 'a'..'z'

  cap_string = string.split.map do |word|
    word = word.downcase

    if letters.include?(word[0])
      word[0] = word[0].upcase
    end
    word
  end
  p cap_string
  cap_string.join(' ')
end


# Or more simply
def word_cap3(string)
  words = string.split

  cap_string = words.map do |word|
    word.capitalize
  end
  cap_string.join(' ')
end

# Examples

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

p word_cap3('four score and seven') == 'Four Score And Seven'
p word_cap3('the javaScript language') == 'The Javascript Language'
p word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap_manual(sentence)
  split_sentence = sentence.split
  new_sentence = []
  for i in split_sentence
    placeholder = i[0]
    new_sentence << capital(placeholder) + i[1..-1]
  end
  new_sentence.join(' ')
end

def capital(char)

(char.ord - 32).chr

end

puts word_cap_manual('this is a "quoted" word')