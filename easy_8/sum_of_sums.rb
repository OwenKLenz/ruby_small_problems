# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# input:
# array of numbers

# output:
# a number

# rules:
# add the first to the sum of the first two elements to the first 3 elements, etc until the end of array is reached.
# arrays contain at least one number

# next try injecting with a memo

# algorithm:
# array.map with index
#   for each index value, Array#take the first index value+ 1 elements
#   inject + into the taken values
#   finally inject + into the mapped array

def sum_of_sums(array)
  array.map.with_index { |_, index| array.take(index + 1).inject(:+) }.inject(:+)
end

# or...

def sum_of_sums2(array)
  counter = 1
  array.inject(0) do |memo, _|
    nums = array.take(counter)
    counter += 1
    nums.inject(:+) + memo
  end
end

# Examples:

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

p sum_of_sums2([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums2([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums2([4]) == 4
p sum_of_sums2([1, 2, 3, 4, 5]) == 35