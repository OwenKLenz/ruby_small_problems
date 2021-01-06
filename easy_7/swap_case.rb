# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# input:
# string

# output:
# case swapped string

# rules:
# every letter's case must be swapped
# non alpha characters can be left alone

# algorithm:
# map over string characters
# if char is a letter
#   use a ternary operator to assign char to upcase or downcase
#   return char to map
# join mapped array

def swapcase(string)
  string.chars.map { |char| char.upcase == char ? char.downcase : char.upcase }
    .join
end

def swapcase!(string)
# Algorithm:
#   create a downcased version of string
#   for each character in string, if character == downcased equivalent set char 
#   to upcase
# else set char to downcase
  dc_string = string.downcase
  
  string.length.times do |i|
    if string[i] == dc_string[i]
      string[i] = string[i].upcase
    else 
      string[i] = string[i].downcase
    end
  end
  string
end

# Example:

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

p swapcase!('CamelCase') == 'cAMELcASE'
p swapcase!('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'