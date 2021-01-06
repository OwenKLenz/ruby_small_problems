# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# input:
# array and search value

# output:
# boolean

# Rules:
# The array should be searched for the search value
# no using include?
# return true or false

# Algorithm
# Iterate over the array (each)
# if current value == search value return true
# return false

def include?(array, search)
  array.each do |value|
    return true if value == search
  end
  false
end

# or

def include2?(array, search)
  return true if array.count(search) >= 1
  false
end


# Test cases
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

p include2?([1,2,3,4,5], 3) == true
p include2?([1,2,3,4,5], 6) == false
p include2?([], 3) == false
p include2?([nil], nil) == true
p include2?([], nil) == false