# Input: An array of arrays (not necessarily NxN)
# Output: a new array with the rows and columns swapped

# Data Structures: Arrays

# In a nutshell:
#   Take a 2D array and return a new array with the rows and colums swapped
#   Argument arrays will be at least 1 x 1
  
# Trickiness:
  # An array with one subarray of length n will become an array of n subarrays of length 1
  
# Algorithm:
  # init new array with elements equal to width of first subarray in arg matrix
  # Iterate across width of matrix for each row
  #   append current num to index of the return matrix equal to the index of the current num in its subarray
  
def transpose(matrix)
  return_matrix = Array.new(matrix[0].size) {[]}
  matrix.each do |row|
    row.each_with_index { |el, index| return_matrix[index] << el }
  end
  p return_matrix
end

# [1, 2, 3]
# [3, 4, 5]
# [13]
# [24]
# [35]

# Becomes:
 
# [1, 3]
# [2, 4]
# [3, 5]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]