# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# input:
# string

# output: 
# boolean

# rules:
# return false if the string contains any lowercase (alphabetic) characters
# otherwise, return true
# make sure to ignore non-alpha characters

# algorithm:
# iterate over the characters in string
#   return false if any character != itself.upcase
# return true

def uppercase?(str)
  str.each_char do |char|
    return false if char != char.upcase
  end
  true
end

# Or...
require 'benchmark'

def uppercase2?(str)
  str.each_char do |char|
    return false if (97..122).include?(char.ord)
  end
  true
end

def uppercase3?(str)
  str == str.upcase
end

puts Benchmark.measure {
  100_000.times do
    uppercase?('4SCORE!')
  end
}

puts Benchmark.measure {
  100_000.times do
    uppercase3?('4SCORE!')
  end
}
# could also just use a range from 'a'..'z' and not bother with String#ord

# Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

p uppercase2?('t') == false
p uppercase2?('T') == true
p uppercase2?('Four Score') == false
p uppercase2?('FOUR SCORE') == true
p uppercase2?('4SCORE!') == true
p uppercase2?('') == true