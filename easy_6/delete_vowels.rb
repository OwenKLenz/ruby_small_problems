# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# input:
# array of strings

# output:
# array of vowelless strings

# Rules:
# Return must contain the letters in the same order with the vowels removed

# Algorithm:
# map over the array and then map over the array
#   map over the individual strings
#     return value is string with VOWELS string.deleted

VOWELS = "aeiouAEIOU"

def remove_vowels(strings)
  strings.map{ |string| string.delete(VOWELS) }
end

def remove_vowels2(strings)
  strings.each_with_object([]) do |string, array|
    array << string.chars.each_with_object('') do |letter, voweless_string|
      voweless_string << letter unless VOWELS.include?(letter)
    end
  end
  
end


# Example:

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

p remove_vowels2(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels2(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels2(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']