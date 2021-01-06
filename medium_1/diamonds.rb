# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Input: Integer
# Output: n lines of text making a diamond shape

# Rules:
# height and width of diamond will be n
# n of 1 will be single *
# integers will always be odd

# Declarative:
# Keep track of stars and spaces on the left to be printed
  # Spaces will start at n  - 1 / 2 and decrement to 0, before reversing
  # Stars will start at 1 and increment by 2s until stars == n
# Before each incre/decre print ' ' * spaces + '*' * stars

# Imperative:
# Init stars to 1
# Init spaces to (n - 1) / 2
# stars_growing = true
# n times
#   print spaces spaces
#   print stars stars
#   if stars_growing
#     decrement spaces by 1
#     increment stars by 2 
#   else
#     increment spaces by 1
#     dcrement stars by 2
#   end
#   if spaces = 0 stars_growing =  false
  
# Get stars array and spaces array
#   For stars
      #   init counter to 1
      # int/2 + 1 times
      # append counter to starss array
      # increment counter by 2

def meth(a, b, c, &block)
  z = "hello"
  a = block.call(z)
  p a
end

zed = 5

meth(1, 2, 3) do |string|
  puts string
  puts zed
end

def diamond2(int)
  stars = 1
  spaces = (int - 1) / 2
  stars_growing = true
  int.times do
    puts ' ' * spaces + '*' * stars
    if stars_growing
      spaces -= 1
      stars += 2
    else
      spaces += 1
      stars -= 2
    end
    stars_growing = false if spaces == 0
  end
end

def get_num_of_stars(int)
  stars_arr = []
  counter = 1
  (int / 2 + 1).times do 
    stars_arr << counter
    counter += 2
  end
  stars_arr += stars_arr[0..-2].reverse
end

def get_num_of_spaces(int)
  spaces_arr = []
  counter = int / 2
  (int / 2 + 1).times do 
    spaces_arr << counter
    counter -= 1
  end
  spaces_arr += spaces_arr[0..-2].reverse
end

def diamond2(int)
  spaces = get_num_of_spaces(int)
  stars = get_num_of_stars(int)
  int.times do |i|
    puts ' ' * spaces[i] + '*' * stars[i]
  end
end

# Further Exploration

def open_diamond(int)
  left_star = (int - 1) / 2
  right_star = (int - 1) / 2
  int.times do 
    if left_star == 0
      left_star, right_star = right_star, left_star
    end
    puts get_line_arr(int, left_star, right_star).join
    left_star -= 1
    right_star += 1
  end
end

def get_line_arr(size, left, right)
  line_arr = Array.new(size, ' ')
  line_arr[left], line_arr[right] = '*', '*'
  line_arr
end

open_diamond(3)


# Examples

diamond(1)

# *
diamond(3)

#  *
# ***
#  *
diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *