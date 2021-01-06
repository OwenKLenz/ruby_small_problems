# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# input:
# a string

# output:
# an array of palindromic substrings

# rules:
# list should contain all palindromic substrings of input string
# none returns empty array
# non-alpha chars and case count towards palindromocity
# single letters are not palindromes

# algorithm:
# iterate over the return valuve of substrings(string)
# if string.size > 1 and string == string.reverse
#   append string to return array

def palindromes(string)
  substrings(string).select do |substring|
    substring.length > 1 && substring == substring.reverse
  end
end

def substrings_at_start(string)
  string.chars.map.with_index { |_, index| string[0..index] }
end

def substrings(string)
  sstrings = string.chars.map.with_index do |_, index|
               substrings_at_start(string[index...string.size])
             end
  sstrings.flatten
end

# Further Exploration:
# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case? Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.

def clean_string(string)
  string.downcase.chars.select { |char| char =~ /[a-z1-9]/ }.join
end

def palindrome?(string, previous_palindrome)
    string.length > 1 && 
    string == string.reverse && 
    string != previous_palindrome
end

def inclusive_palindromes(string)
  previous_cleaned_palindrome = ''
  pals = []
  substrings(string).each do |substring|
    cleaned_string = clean_string(substring)
    if palindrome?(cleaned_string, previous_cleaned_palindrome)
      pals << substring
      previous_cleaned_palindrome = cleaned_string
    end
  end
  pals
end

p inclusive_palindromes('ma-+dA~~~m')
p inclusive_palindromes('a d a a d  a')
p inclusive_palindromes('knitting 1-1 1-A-~1cassettes')
p inclusive_palindromes('madam')
p inclusive_palindromes('hello-madam-did-madam-goodbye')
p inclusive_palindromes('knitting cassettes') 
# Examples:

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]