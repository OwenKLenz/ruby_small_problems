# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Summary:
#   Create a new array that contains the values from the two argument arrays in sorted order. Don't mutate the arrays and don't use Array#sort

# Input: Two arrays (sorted)
# Output: A new array (sorted)

# Concerns:
#   Empty arrays are still sorted but if one array is empty, just return an array of the same values in the other array
  
# Data Structures:
#   Arrays
  
# Algorithm:
#   Init two counters, one to track position in each array
#   increment the counter to reference the next element in each array
#   whichever current element is greater, should be appened to the return array
#   Whenever an element is appened, increment the counter
#   If a nil element is referenced (out of bounds) 
#     append the non nil element (and increment accordingly)

def merge(arr1, arr2)
  counter1, counter2 = 0, 0
  return_arr = []
  
  until counter1 >= arr1.size && counter2 >= arr2.size
    break if arr2[counter2] == nil || arr1[counter1] == nil

    if arr1[counter1] == nil || arr1[counter1] >= arr2[counter2]
      return_arr << arr2[counter2]
      counter2 += 1
    else
      return_arr << arr1[counter1]
      counter1 += 1
    end
  end
  return_arr + (arr1[counter1].nil? ? arr2[counter2..-1] : arr1[counter1..-1])
end

# while our return array's size is less then combined size of arg arrays
#   if current element in array1 isn't nil append current element in array unless current element in array2 is smaller
#   otherwise append the current element in array2

def merge(arr1, arr2)
  shift_made = true
  return_arr = arr1 + arr2
  
  until !shift_made
    shift_made = false
    
    1.upto(return_arr.size - 1) do |i|
      if return_arr[i] < return_arr[i - 1]
        return_arr[i], return_arr[i - 1] = return_arr[i - 1], return_arr[i]
        shift_made = true
      end
    end
  end
  return_arr
end

# Examples:

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
