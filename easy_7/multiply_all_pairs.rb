# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# input:
# two arrays of possibly varied size

# output:
# an array of the product all possible pairs of an element from each array

# rules:
# neither array will be empty
# each element in the first array should be multiplied by every element in the second array
# sort the return array from smallest to largest

# algorithm:
# use product to obtain all possible pairs
# map over those pairs injecting multiplication
# sort the mapped array

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |subarray| subarray.inject(:*) }.sort
end

# or...

def multiply_all_pairs2(array1, array2)
  return_array = []
  array1.each do |first|
    array2.each do |second|
      return_array << first * second
    end
  end
  return_array.sort
end

# Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

p multiply_all_pairs2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]