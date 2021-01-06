# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# Examples

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
def transpose(matrix)
  
  
  trans_matrix = Array.new(matrix.size) { |_| Array.new(matrix.size) } 
  
  matrix.size.times do |row|
    matrix.size.times do |column|
      trans_matrix[row][column] = matrix[column][row]
    end
  end
  trans_matrix.each do |line|
    p line
  end
end


# Transposing in place:

# Iterate across row1 (from index 0)and swap row element with colum element
#   index[0][0] swaps with itself, [0][1] with [1][0]. [0][2] with [2][0]
# then iterate across from index 1 and swap row with column
#   [1][1] with [1][1] [1][2] with [2][1]
# then iterate across index 2...
#   [2][2] with [2][2]

# loop from 0..2 with i param
#   loop from i to 2 with j param
#     swap with ij with ji
#     swap with 1..2
#     swap 2..2

def transpose!(matrix)
  (0...matrix.size).each do |i|
    (i...matrix.size).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix.each { |row| p row }
p matrix.object_id

transpose!(matrix)

matrix.each { |row| p row }
p matrix.object_id




# [1, 5, 8],
# [4, 7, 2],
# [3, 9, 6]

# [1, 4, 3]
# [5, 7, 9]
# [8, 2, 6]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]