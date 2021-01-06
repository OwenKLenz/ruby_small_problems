# Write a bubble sort method

# Input: An array
# Output: An array sorted with bubble_sort

# Considerations:
# Are all elements the same data type?
# Arguments will contain at least two elements

# Data Structure:
# Arrays

# Algorithm:
# init swap_made variable to false
#   Iterate over elements of array 2 at a time
#     A loop with a call to Integer#times with 1 less than the size of the arry
#     Using the parameter from times, access the current element and element + 1 in array
#   Compare the two elements and swamp them if left element is greater than right
#     use spaceship operator, if it returns 1, left element is greater and should be swapped
#     multivariable assignment to swap all at once
#     if swapped, set swap_made to true
#   Continue to iterate over array until a pass with no swaps is made
#     reassign swap_made to false after each pass
#     return array at end

# Once a pair is not swapped, mark them
#   if a new element is swapped, marker back to nil
  
#   Definitely want decrement the range we're covering after each pass, because largest remaining elmeent will get moved to end


def bubble_sort1!(array)
  return nil unless array.all?(array[0].class)
  
  to_be_sorted = array.size - 1

  loop do
    new_ending = 0
    
    0.upto(to_be_sorted - 1) do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        new_ending = i
      end
    end
    to_be_sorted = new_ending - 1
    break if to_be_sorted < 0
    new_ending == nil ? (to_be_sorted -= 1) : to_be_sorted = new_ending
  end
end


def bubble_sort2!(array)
  return nil unless array.all?(array[0].class)
  size = array.size - 1
  swaps = false
  loop do

    size.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swaps = true
      end
    end
    break if !swaps
    swaps = false
  end
end


# Examples:
# [100, 3, 2, 1]
# [1, 2, 1, 3] # marker = 0
# 3, 1, 2, 3 # marker = nil
# # marker = 2
# 1 3 2 3
# 1 2 3 3

require 'benchmark'

Benchmark.bm do |bm|
  bm.report do
    100000.times do
      array = [5, 3]
      bubble_sort1!(array)
      array == [3, 5]
      
      array = [6, 2, 7, 1, 4]
      bubble_sort1!(array)
      array == [1, 2, 4, 6, 7]
      
      array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
      bubble_sort1!(array)
      array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
      
      # array = ["Sue", "Pete", "Alice", "Tyler", 4, 6, 7]
      # p bubble_sort1!(array)
      # p array
    end
  end
  
  bm.report do
    100000.times do 
      array = [5, 3]
      bubble_sort2!(array)
      array == [3, 5]
      
      array = [6, 2, 7, 1, 4]
      bubble_sort2!(array)
      array == [1, 2, 4, 6, 7]
      
      array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
      bubble_sort2!(array)
      array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
      
      # array = ["Sue", "Pete", "Alice", "Tyler", 4, 6, 7]
      # p bubble_sort2!(array)
      # p array
    end
  end
end