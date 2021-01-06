# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# input:
# a string

# output:
# a string of the middle character(s)

# rules:
# get one string argument
# determine the middle of the string
# return the middle character for an odd size string or 2 chars for an even string

# algorithm:
# initialize middle variable to string.size / 2
# use ternary operator
# condition is size.odd?
# true output is string[mid]
# false output is string[mid - 1..mid]

def center_of(string)
  mid = string.size / 2

  string.size.odd? ? string[mid] : string[(mid - 1)..mid]
end

def center_of2(string)
  left_index= 0
  right_index = string.size - 1

  until left_index >= right_index
    left_index += 1
    right_index -= 1
  end

  string[right_index..left_index]
end
# Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

p center_of2('I love ruby') == 'e'
p center_of2('Launch School') == ' '
p center_of2('Launch') == 'un'
p center_of2('Launchschool') == 'hs'
p center_of2('x') == 'x'