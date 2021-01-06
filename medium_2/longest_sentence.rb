# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# Example text:

# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.
# The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

# Input: Big string
# Ouput: String + length of sentence in words

# Data Structures: 
#   Strings for input and sentences/words
#   Array for counting words?
#   Integer for word count
  
# Rules: 
#   words end with '!', '?' or '.'
#   Find the longest sentence and print it (with it's length in words)

# Algorithm:
#   Init sentence holder variable as an array
#   init longest_sentence variable to empty array
#   split the text into an array of words
#   iterate over words appending each word to sentence holder
#     if last character of word is ., ! or ? and sentence holder's size is greater than longest sentence size 
#       SET longest sentence to sentence holder
#     Either way, reassign sentence_holder to empty array and continue iterating
    
#   After iterating over all words, print rejoined longest sentence array + length of array

# Finding longest sentence in terms of words
def find_longest_sentence(text)
  endings = %w(. ? !)
  sentence_holder = []
  longest_sentence = []
  
  text.split.each do |word|
    sentence_holder << word
    
    if endings.include?(word[-1])
      longest_sentence = sentence_holder if sentence_holder.size > longest_sentence.size
      sentence_holder = []
    end
  end
  puts "\"#{longest_sentence.join(' ')}\"" + "\nSize: #{longest_sentence.size}"
end

# Finding longest sentence in terms of characters
def find_longest_sentence(text)
  current_start, start, finish, index = 0, 0, 0, 0

  loop do
    break if index == text.size

    if /[.!?]/ =~ text[index]
      if index - current_start > finish - start
        start, finish = current_start, index
      end
      current_start = index + 1
    end
    index += 1
  end
  puts text[start..finish]
  puts text[start..finish].split.size
end

find_longest_sentence("The quick brown fox jumps? Over the lazy. Dog!")

find_longest_sentence(File.read("frank_n_stein.txt"))

find_longest_sentence("Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.")

# Longest word
def find_longest_word(text)
  endings = ['.', '?', '!', ',']
  longest_word = ''

  text.split.each do |word|
    word = word[0..(endings.include?(word[-1]) ? -2 : -1)]
    longest_word = word if word.size > longest_word.size
  end
  puts longest_word
end

def find_longest_word(text)
  puts text.delete("!?\",.)([]{}").split.max_by { |word| word.size }
end

def find_longest_paragraph(text)
  puts text.split("\n\n").max_by { |par| par.split.size }
end

find_longest_word("The quick brown fox jumps? Over the lazy. Dog!")
find_longest_paragraph("The quick brown fox jumps? Over the lazy. Dog!")

puts find_longest_paragraph("Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.")