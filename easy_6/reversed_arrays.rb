# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# input:
# Array

# output:
# same array but mutated

# Rules:
# Mutate an array by reversing the order of the elements
# don't use Array#reverse

# Algorithm:
# initialize element to 0
# find the middle of the array:
#   array.length / 2
# until element == middle
# with multivariable assignment
#   set array[element], array[-(element + 1)] = array[-(element + 1)], array[element]
#   increment element
require 'benchmark'
def reverse!(array)
  index = 0
  middle = array.length / 2
  
  until index == middle
    array[index], array[-(index + 1)] = array[-(index + 1)], array[index]
    index += 1
  end
  array
end

# OR...

def reverse2!(array)
  counter = -1
  rev_array = []
  until counter.abs > array.length
    rev_array << array[counter]
    counter -= 1
  end
  
  rev_array.length.times do |i|
    array[i] = rev_array[i]
  end
  array
end
c = (1..10000000).to_a
a = (1..10000000).to_a
p a.object_id
b = reverse2!(a)
p b.object_id

# Benchmarking the two methods
Benchmark.bm do |bm|
  bm.report do
    reverse!(a)
  end
  bm.report do
    reverse2!(c)
  end
end
# Examples:

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []