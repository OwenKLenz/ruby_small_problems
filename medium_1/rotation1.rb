# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Input: Array
# Output: Array

# Rules:
# Receive one array argument
# return a copy of the array argument with the first element rotated to be the last element
# don't mutate the original array

# Algorithm:
# Iterate over argument array
#   push each element to return array
# shift the last element off the array and push the return value to the end
# return the new array

def rotate_array1(arr)
  rotated_arr = arr.map { |element| element }
  rotated_arr.push(rotated_arr.shift)

  rotated_arr
end

# or...

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Further Exploration:

# For strings
def rotate_string(string)
  if string.size > 1
    rotate_array(string.chars).join
  else
    string
  end
end

# For integers
def rotate_int(integer)
  return integer if integer.to_s.size == 1
  
  rot_int = rotate_array(integer.abs.digits.reverse).join.to_i
  
  rot_int * integer / integer.abs
end

p rotate_int(123)
p rotate_int(0)
p rotate_int(-100)
p rotate_int(-1101)



# Test Cases:
p rotate_string("hello")
p rotate_string("Hello, World")
p rotate_string("")
p rotate_string("12345")

# Example:

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_array1([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array1(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array1(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array1(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true