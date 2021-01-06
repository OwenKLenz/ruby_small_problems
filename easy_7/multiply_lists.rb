# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# input:
# two arrays of equal length, containing integers

# output:
# an array of integers

# rules:
# Arrays will be of equal length
# return array should contain the products of each pair of elements at adjacent indexes from the two arrays.

# algorithm:
# zip the arrays together and map over the resulting array returning the product of each subarray

def multiply_list(array1, array2)
  array1.zip(array2).map { |subarray| subarray.inject(:*) }
end

# Or...
def multiply_list2(array1, array2)
  return_array = []
  array1.each_index do |index|
    return_array << array1[index] * array2[index]
  end
  return_array
end


# Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]