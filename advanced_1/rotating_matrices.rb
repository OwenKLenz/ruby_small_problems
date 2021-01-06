# Summary:
#   Take an n x m 2D array and rotate it 90 degrees, clockwise. In other words, the top row becomes the rightmost colum, the rightmost column becomes the bottom row, etc.
#   Should work for non-square matrices
# For non-square arrays, length and width get swapped

# Input: A matrix (square or non square)
# Output: A rotated matrix (new 2D array)

# Data Structures:
#   Array
  
# Considerations:
#   In an odd length square array, the center element doesn't move

# Algorithm:
#   Init empty array of appropriate number of subarrays
#     - height = length of element 0
#     - width = length of matrix

  
#   loop on width
#     loop on height
#       new matrix on height and the negative of the current width - 1
#       becomes...
#       original matrix on width and height
# 00 becomes 02
# 01 becomes 12
# 02 becomes 22

# 10 becomes 01
# 11 becomes 11
# 12 becomes 21

# 20 becomes 00
# 21 becomes 10
# 22 becomes 20

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

#     [0, 0, 0],
#     [0, 0, 0],
#     [0, 0, 0]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

def rotate90(matrix)
  new_matrix = Array.new(matrix[0].size) { Array.new(matrix.size) }
  matrix.size.times do |height|
    matrix[0].size.times do |width|
      new_matrix[width][(-1 - height)] = matrix[height][width]
    end
  end
  new_matrix
end

def rotateNdegrees(matrix, degrees)
  if degrees <= 0
    return matrix
  else
    new_matrix = Array.new(matrix[0].size) { Array.new(matrix.size) }
    matrix.size.times do |height|
      matrix[0].size.times do |width|
        new_matrix[width][(-1 - height)] = matrix[height][width]
      end
    end
    rotateNdegrees(new_matrix, degrees - 90)
  end
end


matrix1.each do |line|
  p line
end
puts
rotateNdegrees(matrix1, 270).each do |line|
  p line
end

puts
puts

matrix2.each do |line|
  p line
end
puts
rotateNdegrees(matrix2, 270).each do |line|
  p line
end

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2