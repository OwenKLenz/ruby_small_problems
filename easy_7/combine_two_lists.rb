# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# input:
# two arrays

# output:
# an array

# rules:
# Combine two arrays into one array
# the elements must alternate
# Arrays are not empty

# algorithm:
# length times, append array1s nth value and then array2s nth value
# increment n

# or

# each with index over array1
# for each index
# Array#insert the value at that index into the other array


def interleave(array1, array2)
  return_array = []
  array1.length.times do |i|
    return_array.push(array1[i], array2[i])
  end
  return_array
end

#or

def interleave2(array1, array2)
  counter1 = 1
  counter2 = 0
  loop do
    array1.insert(counter1, array2[counter2])
    counter1 += 2
    counter2 += 1
    break if counter2 == array2.size 
  end
  array1
end

# Further exploration:
def interleave3(array1, array2)
  array1.zip(array2).flatten
end

interleave3([1, 2, 3], %w(a b c))

# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']