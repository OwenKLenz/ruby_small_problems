# Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, then recombining those nested sub-arrays in sorted order. It is best shown by example. For instance, let's merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]]
# We then work our way back to a flat array by merging each pair of nested sub-arrays:

# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

# Input: An array of values of the same type
# Output: A sorted array

# Concerns:
#   Handling strings

# Data Structures:
#   Arrays
  
# Algorithm:
#   pass halves of the array to a new call to the method

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

def merge_sort(array)
  return array if array.size == 1
  merge(merge_sort(array[0...(array.size / 2)]), merge_sort(array[(array.size / 2)...array.size]))
end

# Examples:

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


# Further Exploration:

def merge_sort_iter(array)
  array.map! { |el| [el] }
  p array
  
end

p merge_sort_iter([9, 5, 7, 1]) #== [1, 5, 7, 9]





# Merge Sort (Iterative):

# Input: Unsorted array of any data
# Output: Sorted array

# Summary:
#   break the elements in half until you have an array of 1 element arrays
#   Then rejoin the one element arrays in order from least to greatest
#   Then the two element arrays
#   Then four, etc.
  
#   Need a sorting algorithm (merges two arrays into a sorted array)

# Data Structures:
# Arrays

# Algorithm:
# Merging algorithm:
#   Init second array counter to 0
#   Iterate first array with each
#   within each block:
#     loop through 2nd array elements by index until 1st array element is smaller
#     for each smaller second array element, append it to sorted array
#   after exiting inner loop, append current 1st array element to sorted_array
#   break from inner loop if current element is nil

def merge(arr1, arr2)
  counter = 0
  sorted_arr = []
  
  return [arr1] if arr2 == nil
  arr1.each do |el|
    while arr2[counter] != nil && arr2[counter] <= el
      sorted_arr << arr2[counter]
      counter += 1
    end
    sorted_arr << el
  end
  [sorted_arr + arr2[counter..-1]]
end

# merge([1, 5], [2, 3])

# Merge Sort Algorithm:
#   Break array down into array of one element arrays
#     Map over array and block returns element in arr
#   pass pairs of elements to merge and reassign those elements to the return value (sorted array)
# Watch out for odd element arrays
  # [1, 3, 9, 4]
  # [1], [3], [9], [4]

def merge_sort(array)
  return array if array.size <= 1

  array.map! { |el| [el] }
  (array.size - 1).times do
    counter = 0
    loop do
      array[counter..(counter + 1)] = merge(array[counter], array[counter + 1])
      counter += 1
      break if counter == array.size
    end
  end
  array.flatten
end


# [1, 3], [5, 2]

# Test Cases:
p merge_sort([9, 4, 3, 12, 15]) == [3, 4, 9, 12, 15]
p merge_sort([]) == []
p merge_sort(%w(one four two three)) == %w(four one three two)
p merge_sort([3, 1]) ==  [1, 3]
p merge_sort([1]) == [1]

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
