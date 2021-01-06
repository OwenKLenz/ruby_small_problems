# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# # Examples:

# input:
# array

# output:
# sorted array

# Rules:
# Integers are sorted based on the alphabetization of their English spelling
# Sorted array should still contain integers

# Algorithm:
# Create an array with each english word at the appropriate index [zero, one], etc
# sort the integer array by (sort_by) comparing the values at that integers index in the English numbers array.
# Sort_by with a bang

ENGLISH_NUMS = %w(
                  zero one two three four five six seven eight nine ten eleven
                  twelve thirteen fourteen fifteen sixteen seventeen eighteen
                  nineteen
                 )

def alphabetic_number_sort(num_array)
  num_array.sort_by!{ |i| ENGLISH_NUMS[i] }
end

def alphabetic_number_sort2(num_array)
  num_array.sort!{ |a, b| ENGLISH_NUMS[a] <=> ENGLISH_NUMS[b] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]