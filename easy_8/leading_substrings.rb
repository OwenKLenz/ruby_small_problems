# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# input:
# A string

# output:
# an array of substrings

# rules:
# return an array that includes the first letter, then first 2 letters, then 3, etc.
# array should be ordered based on element size

# algorithm:
# map with index
#   return string[0..index]

def substrings_at_start(string)
  string.chars.map.with_index { |_, index| string[0..index] }
end

# Or...

def substrings_at_start2(string)
  return_array = []

  1.upto(string.length) do |n|
    return_array << string.chars.take(n).join
  end
  return_array
end


# Examples:

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p substrings_at_start2('abc') == ['a', 'ab', 'abc']
p substrings_at_start2('a') == ['a']
p substrings_at_start2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']