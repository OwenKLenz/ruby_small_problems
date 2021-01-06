# Write a method that can rotate the last n digits of a number. 

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# Input: 2 integers
# Output: 1 integer

# Rules:
# Take 2 integer arguments
# First is the number to be rotated
# Second is the number of digits from the right, to rotate
# Second number will always be positive

# Algorithm:
# Convert num to a string and save result to a variable
# slice! string from[-n, n]
# pass the result of slice.chars to rotate_array
# append the return value.to_s back onto the previously sliced string
# convert it back to_i

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  str_num = number.to_s
  str_num << rotate_array(str_num.slice!(-digits, digits).chars).join
  str_num.to_i
end

def rotate_rightmost_digits(number, digits)
  str_num = number.to_s
  (str_num.to_s << str_num.slice!(-digits)).to_i
end

def rotate_rightmost_digits3(number, digits)
  str_num_array = number.to_s.chars
  str_num_array[-digits..-1] = rotate_array(str_num_array[-digits..-1])
  str_num_array.join.to_i
end
# For example:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

p rotate_rightmost_digits3(735291, 1) == 735291
p rotate_rightmost_digits3(735291, 2) == 735219
p rotate_rightmost_digits3(735291, 3) == 735912
p rotate_rightmost_digits3(735291, 4) == 732915
p rotate_rightmost_digits3(735291, 5) == 752913
p rotate_rightmost_digits3(735291, 6) == 352917