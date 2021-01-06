# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# input:
# integer
# output:
# a displayed triangle

# rules
# sides should be n in length


# algorithm:
# initialize a string of n spaces
# 1. upto n 
# string element -n == *
# puts string



def triangle2(n)
  spaces = n - 1
  stars = 1
  until stars > n
    puts ' ' * spaces + '*' * stars
    spaces -= 1
    stars += 1
  end
end


# algorithm:
# initialize starter string based on right corner location (case statement)
#   1 and 2 = '*****'
#   3 and 4 = '     '

# if corner is 1:
#   string[-n] = ' '
# if corner is 2:
#   string[n] = ' '
# if corner is 3
#   string[n] = '*'
# if corner is 4
#   string[-n] = '*'

def lower_right_triangle(n)
  string = " " * n
  1.upto(n) do |i|
    string[-i] = '*'
    puts string
  end
end

def lower_left_triangle(n)
  string = " " * n
  n.times do |i|
    string[i] = '*'
    puts string
  end
end

def upper_left_triangle(n)
  string = "*" * n
  1.upto(n) do |i|
    puts string
    string[-i] = ' '
  end
end

def upper_right_triangle(n)
  string = "*" * n
  n.times do |i|
    puts string
    string[i] = ' '
  end
end

def display_all_triangles(n)
  upper_left_triangle(n)
  upper_right_triangle(n)
  lower_left_triangle(n)
  lower_right_triangle(n)
end

display_all_triangles(4)


# def triangle(n, right_corner_location)

#   rsu_lines1 = ' ' * n
#   n.times do |i|
#     puts string
#     string[i] = ' '
#   end
# end


# triangle(1)

# triangle2(3)
# triangle2(5)
# triangle2(4)


# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********