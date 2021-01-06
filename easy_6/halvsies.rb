# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# input:
# an array
# output:
# an array containing two arrays

# Rules:
# Return a 2D array
# split the original array into 2
# if array size is odd, the middle element should be stored in the first array

# Algorithm:
# Determine the middle of the array
#   array.size divided by 2.ceil to round up
# first array = array[0...middle]
# 2nd array = [middle..array.size]
# use element reference (0 and 1) to assign the two array segments to each subarray of the return array

def halvsies(array)
  middle = (array.size.to_f / 2).ceil
  [array[0...middle], array[middle...array.size]]
end

# Alternative solutions

def halvsies2(array)
  return_array = [[]]
  middle = array.size / 2
  until array.size == middle
    return_array[0] << array.shift
  end
  return_array[1] = array
  return_array
end

def halvsies3(array)
  return_array = [[],[]]
  array.each_with_index do |num, index|
    if index < (array.size.to_f / 2).ceil
      return_array[0] << num
    else
      return_array[1] << num
    end
  end
  return_array
end

p halvsies2([1, 2, 3, 4])
p halvsies2([1, 5, 2, 4, 3])

p halvsies3([1, 2, 3, 4])
p halvsies3([1, 5, 2, 4, 3])

# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]