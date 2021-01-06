# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# input:
# a string

# output:
# a string

# rules:
# return string should have all consonants doubled
# don't double vowels, non-alpha chars.

# algorithm:
# Iterate over characters in string
# if character is doubleable_char? add it to return string twice
# else add it once.

def double_consonants(string)
  string.chars.each_with_object('') do |char, str|
    str << (char.downcase =~ /[a-z&&[^aeiou]]/ ? char * 2 : char)
  end
end

# Examples:

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants("Everybody Adores Owls") =="Evverryybboddyy Addorress Owwllss"
p double_consonants('') == ""