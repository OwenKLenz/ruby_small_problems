# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# input:
# string

# output:
# array of substrings

# rules:
# return all possible combinations of consecutive characters in the string in order

# algorithm:
# string.size times (num)
#   pass the string from num to end to substrings_at_start
#   append return value to return array or map with index
#   flatten?

def substrings_at_start(string)
  string.chars.map.with_index { |_, index| string[0..index] }
end

def substrings(string)
  sstrings = string.chars.map.with_index do |_, index|
               substrings_at_start(string[index...string.size])
             end
  sstrings.flatten
end

def method(&block)
  yield
end

# Or...

def substrings2(string)
  counter1 = 0
  sstrings = []

  until counter1 == string.size do
    counter2 = counter1
    until counter2 == string.size do
      sstrings.append(string[counter1..counter2])
      counter2 += 1
    end
    counter1 += 1 
  end
  sstrings
end

# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

p substrings2('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]