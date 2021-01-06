# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed 
# on separate lines.

# The problem:
# input:
# all integers from 1-99

# output:
#all odd numbers from 1-99

# Explicit requirements:
# Each number is displayed on its own line
# include 1 and 99
# Implicit requirements:

# Data Structure:
# Numbers

# Algorithm:
# Use a range object (1..99)
# iterate over 1..99 with Range#each
# if block parameter is odd?
# puts it

(1..99).each do |num|
  puts num if num.odd?
end

#alternative solution

array = Array.new(99) do |index| 
  if index % 2 == 0
    index + 1 
  end
end
puts array.compact
