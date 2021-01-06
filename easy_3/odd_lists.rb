# Write a method that returns an Array that contains every other element of an 
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the 
# argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# The problem:
# Input:
# an array

# Output:
# an array

# Explicit requirements:
# return an array of every other value of argument array
# Start with the 1st element included

# Implicit requirements:

# Data Structure:
# Arrays

# Algorithm:
# Iterate over array
# If index element is even
#   Append value to return array
# return return array

def oddities(array)
  ret_array = []
  array.each_with_index do |value, index|
    if index.even?
      ret_array << value
    end
  end
  ret_array
end

# Write a companion method that returns the 2nd, 4th, 6th, and so on elements
# of an array.

# Try to solve this exercise in at least 2 additional ways.

def evenities1(array)
  index = 1
  even_array = []
  while index < array.length
    even_array << array[index]
    index += 2
  end
  even_array
end

def evenities2(array)
  even_array = []
  loop do
    array.shift
    break if array.length == 0
    even_array << array.shift
  end
  even_array
end

def evenities3(array)
  even_array = []
  array.length.times do |index|
    if index.odd?
      even_array << array[index]
    end
  end
  even_array
end

# Test cases:
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p evenities1([2, 3, 4, 5, 6]) == [3, 5]
p evenities1([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities1(['abc', 'def']) == ['def']
p evenities1([123]) == []
p evenities1([]) == []

p evenities2([2, 3, 4, 5, 6]) == [3, 5]
p evenities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities2(['abc', 'def']) == ['def']
p evenities2([123]) == []
p evenities2([]) == []

p evenities3([2, 3, 4, 5, 6]) == [3, 5]
p evenities3([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities3(['abc', 'def']) == ['def']
p evenities3([123]) == []
p evenities3([]) == []
