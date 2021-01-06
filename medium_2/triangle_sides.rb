# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Input: 3 integers (as a * variable to capture all 3 in an array)
# Output: a symbol (indicating type of triangle)

# Corner Cases:
# sides of length zero are invalid
# sides the two shortest sides must sum to greater than the longest side

# Data Structures:
# Array of side lengths

# Algorithm:
# sort sides (smallest to largest)

# 2 guard clauses:
#   If any side is 0, return :invalid
#   If the sum of the first two (sorted) sides  are <= the longest side, return :invalid
  
# if calling uniq on the array returns an array of size 2, it's isoceles
# if uniq returns array of size 1, it's equilateral
# else its scalene

def triangle(*sides)
  return :invalid if sides.any?(0) || sides.sort[0, 2].sum <= sides.sort[2]

# sides.uniq.size == 3 ? :scalene : (sides.uniq.size == 2 ? :isosceles : :equilateral)
    case sides.uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
end


# Examples:

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid