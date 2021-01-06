# Write a method that takes an Array of numbers, and returns an Array with the 
# same number of elements, and each element has the running total from the 
# original Array.

# The problem:
# Input:
# An Array

# Output:
# An array

# Explicit requirements:
# Return array must have same number of elements
# Each new element assumes the total of previous elements in the old array

# Implicit requirements:
# Each new element is the sum of the equivalent element in the old array and the
# previous element in the new array

# Data Structure:
# Arrays

# Algorithm:
# Iterate over the original array with inject (with block)
# memo is initalized to 0
# Add current element to memo
# shovel memo to new array
# OR
# initialize total to 0
# While array.size > 0
  # Pop off first element, add it to total
  # push total to new array

def running_total(array)
  total = 0
  new_array = []
  while array.size > 0
    total += array.shift
    new_array << total
  end
  new_array
end

def running_total2(array)
  new_array = []
  array.inject(0) do |sum, current|
    new_array[new_array.size] = sum + current
  end
  new_array
end

def running_total3(array)
  sum = 0
  array.each_with_object([]){ |element, arr| arr << sum += element }
end

# Test Cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []

p running_total3([2, 5, 13])
p running_total3([14, 11, 7, 15, 20])
p running_total3([3])
p running_total3([])