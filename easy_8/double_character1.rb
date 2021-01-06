# Write a method that takes a string, and returns a new string in which every character is doubled.

# input:
# string

# output:
# string with each char doubled

# rules:
# return string must double each char

# algorithm:
# initialize an empty string variable
# string.length.times with i block parameter
#   append string[i] * 2 to empty string
  
# return empty string

def repeater(string)
  doubled_str = ''
  string.size.times do |i|
    doubled_str << string[i] * 2
  end
  doubled_str
end

# or...

def repeater2(string)
  string.chars.each_with_object('') do |char, dbl_str|
    dbl_str << char * 2
  end
end

# Examples:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

p repeater2('Hello') == "HHeelllloo"
p repeater2("Good job!") == "GGoooodd  jjoobb!!"
p repeater2('') == ''