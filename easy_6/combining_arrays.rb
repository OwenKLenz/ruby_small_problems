# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# input:
# 2 arrays

# output:
# an array

# rules:
# combine the two arrays into one new array to be returned
# the new array shouldn't contain any duplicates

# Algorithm
# initialize empty return array
# iterate over one argument array, then the other
# for each element, if return array doesn't Array#include? element
#   append element to return array

def merge(*arrs)
  return_arr = []
  arrs.each do |arr|
    arr.each do |el|
      if !return_arr.include?(el)
        return_arr << el
      end
    end
  end
  p return_arr
end

def merge2(*arrs)
  return_arr = []
  arrs.each do |arr|
    return_arr.append(arr)
  end
  return_arr.flatten.uniq
end

def merge3(arr1, arr2)
  (arr1 + arr2).uniq
end

def merge4(*arrs)
  arrs.flatten.uniq
end


# Example

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge3([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge4([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]