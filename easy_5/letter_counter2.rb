# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# rules:
# Ignore characters that aren't letters

# Algorith:
# remove all nonalpha characters from the string before running it through word_sizes
  # split string into chars
  # iterate over each char and append all non letter chars to return array if char is alpha
ALPHA_CHARS = ("a".."z").to_a << ' '
  
def is_alpha?(char)
  ALPHA_CHARS.include?(char.downcase)
end

def delete_nonalpha_chars(string)
  chars = string.split('')
  chars.each_with_object([]){ |char, array| array << char if is_alpha?(char) }.join
end

def word_sizes(string)
  words = delete_nonalpha_chars(string).split

  words.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.downcase.count('a-z')] += 1
  end
end

# OR...

def word_sizes2(string)
  words = string.split
  words.each_with_object(Hash.new(0)) do |word, hash| 
    hash[word.downcase.count('a-z')] += 1
  end
end


# Examples 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3}
p word_sizes2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes2('') == {}