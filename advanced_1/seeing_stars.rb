# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# Input: An integer
# Output: a series of * characters in the shape of an eight pointed star

# Rules:
# n will be odd and greater than or equal to 7

# Data Structure:
# Could use an array to store each line and then print them 1 by 1

# Algorithm:
#   The rules:
#     n lines are printed
#     the middle line is n stars
#     every other line is 3 stars with a varying number of spaces between them
#     spaces between stars:
#       (from the top) spaces start at (n - 1) / 2 - 1, decrement to 0
#     spaces before stars:
#       Start at 0 and increment to (n - 1) / 2 - 1
  
#   2 loops separated by a middle line print the n stars
  
#   loop 1: 
#   outer spaces = Array.new(default to ' ', make it 0 in size)
#   inner spaces = (n - 1) / 2 - 1 Array.new, etc.
#   (n - 1) / 2 times, print outer_spaces * ' ' + * + inner spaces * ' ' + * + outer spaces * ' ' + *
#   increment outer_spaces, decrement inner
#   etc.
  
#   print middle line
  
#   loop 2:
#   decrement outer, increment inner
require 'pry'

def star(n)
  spaces1 = []
  spaces2 = Array.new((n - 1) / 2 - 1, ' ')
  
  1.upto(n) do |i|
    if i == (n + 1) / 2
      puts '*' * n
      next
    end
    
    puts spaces1.join + '*' + spaces2.join + '*' + spaces2.join + '*'
    
    spaces1.push(spaces2.pop) if i < n / 2
    spaces2.push(spaces1.pop) if i > (n + 2) / 2
  end
end

def star(n)
  array = []
  ((n - 1) / 2).times do |i|
    array[i] = ' ' * i + '***'.chars.join(' ' * (((n - 3) / 2) - i))
    array[n - 1 - i] = array[i]
  end
  array[(n - 1) / 2] = '*' * n
  puts array
end

star(7)
# Examples

# star(7)

# # *  *  *
# #  * * *
# #   ***
# # *******
# #   ***
# #  * * *
# # *  *  *
# puts
# star(9)

# # *   *   *
# #  *  *  *
# #   * * *
# #    ***
# # *********
# #    ***
# #   * * *
# #  *  *  *
# # *   *   *
# puts
# star(11)


#   ooooo
# ooooooo
# ooooooooo
# ooooooo
#   ooooo

    
#          oooo
#       o        o
#    o              o
#  o                  o
# o                    o
# o                    o
# o                    o
#  o                  o
#    o              o
#       o        o
#          oooo
           
#           11 * 22
#   o_spaces  i_spaces
# 1.   10         0
# 2.   6          8
# 3.   3          14
# 4.   1          18
# 5.   0          20
# 6.   0          20
# 7.   0          20
# 8.   1          18
# 9.   3          14
# 10.  6          8
# 11.  10         0

# Method takes circle height (11)
# -2x + 20

# outer spaces = .4(x - 6)^2
# inner spaces = -(x - 6)^2 + 22
require 'pry'
def circle(height)
  # binding.pry
  height.times do |x|
    o_spaces = 0.4 * (x - 6) ** 2
    i_spaces = -0.61 * (x - 6) ** 2 + 22
    puts ' ' * o_spaces + 'o' + ' ' * i_spaces + 'o'
  end
end

SCALE_FACTOR = 2.5

def circle(radius)
  height = radius * 2 + 1
  axes = Array.new(height) { |_| Array.new(height * SCALE_FACTOR, ' ') }

  height.times do |y|
    x1 = (Integer.sqrt((( radius ** 2) - (y - radius) ** 2)) + radius) *
         SCALE_FACTOR
    x2 = (-Integer.sqrt(((radius ** 2) - (y - radius) ** 2)) + radius) *
         SCALE_FACTOR
    axes[y][x1] = '*'
    axes[y][x2] = '*'
  end
  axes.each { |line| puts line.join }
end

circle(12)

circle(2)

circle(6)


circle(12)
# =>
#                               *                               
#                     *                   *                     
#                *                             *                
#             *                                  *              
#           *                                       *           
#        *                                            *         
#      *                                                 *      
#      *                                                 *      
#   *                                                      *    
#   *                                                      *    
#   *                                                      *    
#   *                                                      *    
# *                                                           * 
#   *                                                      *    
#   *                                                      *    
#   *                                                      *    
#   *                                                      *    
#      *                                                 *      
#      *                                                 *      
#        *                                            *         
#           *                                       *           
#             *                                  *              
#                *                             *                
#                     *                   *                     
#                               *                               