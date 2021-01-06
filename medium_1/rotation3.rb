# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# input: An integer
# ouput: Rotated Integer

# Rules:
# Rotate the number numeber.size times
# Each rotation rotates one number further to the right the left most number, then the 2nd from left number (the 3rd number before the 1st rotation), then the 3rd from left, etc. to the end of the number

# Algorithm:
# Obtain the size of the number
# digits.reverse to get the digits
# size.downto(1)
  # rotate_rightmost_digits(the num, the current iteration value)
  # array to str and join it
  # return string to_i


def rotate_rightmost_digits(num_array, digits)
  num_array << num_array.slice!(-digits)
end

def max_rotation(num)
  num_arr = num.digits.reverse
  size = num_arr.size

  size.downto(1) do |i|
    rotate_rightmost_digits(num_arr, i)
  end
  num_arr.join.to_i
end

# Example:

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(10001)