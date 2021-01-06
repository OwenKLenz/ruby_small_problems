# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Input: 2 integers, Ouput: an array

# Rules:
# Return array should consist of n consecutive multiples of of the second argument, where n is the first argument
# n will always be 0 or greater

# Algorithm:
# 1.upto count times
#   append 2nd argument multiplied by the current iteration value to return array

def sequence(count, multiplier)
  array = []
  1.upto(count) do |i|
    array << multiplier * i
  end
  array
end

def sequence2(count, multiplier)
  Array.new(count, multiplier).map.with_index do |element, index|
    element *= index + 1
  end
end

# Examples:

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

p sequence2(5, 1) == [1, 2, 3, 4, 5]
p sequence2(4, -7) == [-7, -14, -21, -28]
p sequence2(3, 0) == [0, 0, 0]
p sequence2(0, 1000000) == []