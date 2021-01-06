# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# input:
# Array

# output:
# new reversed array

# Rules:
# Reverse the order of elements in the original array
# don't mutate the original array
# return a reversed copy
# no Array#reverse or Array#reverse!

# Algorithm
# iterate over the array with each_with_object being passed an empty array object
# unshift each element to the new array

# With inject:

# Iterate over arr with inject passed an empty array memo
# set the memo to itself plus current element on each iteration

def reverse(arr)
  arr.each_with_object([]) { |element, new_arr| new_arr.unshift(element) }
end

def reverse2(arr)
  arr.inject([]) { |memo, element| memo.unshift(element) }
end

def reverse3(arr)
  new_arr = []
  (arr.length - 1).downto(0) do |i|
    new_arr << arr[i]
  end
  new_arr
end

p reverse2([1,2,3,4])
p reverse3([1,2,3,4])

# Examples:
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# Recursive Solution:
def reverse_recurse(array, counter=array.size)
  return [array[counter - 1]] if counter == 1
  [array[counter - 1]] + reverse_recurse(array, counter - 1)
end
p reverse_recurse([1, 2, 3, 4])
p reverse_recurse(%w(asd gr wf d b fasw s))


