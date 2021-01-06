# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Input: Array of arrays, each containing a string and an int
# Output: an array of strings

# Rules:
# Method should accept an array of arrays
# each subarray contains a string and an int
# return a single (not nested) containg int of each string
# Presumably there will never be a negative number in the subarrays

# Algorithm:
# Iterate over the argument array with two block parameters, one for the string and one for the number
#   append number strings to a return array
# return the array

def buy_fruit(array)
  fruits = []
  array.each do |fruit, num|
    fruits += [fruit] * num
  end
  fruits
end

# or...

def buy_fruit2(array)
  array.each_with_object([]) do |(fruit, num), fruits|
    fruits.push([fruit] * num)
  end.flatten
end

# Example:

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
  p buy_fruit2([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]