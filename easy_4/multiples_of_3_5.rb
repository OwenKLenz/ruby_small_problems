# Write a method that searches for all multiples of 3 or 5 that lie between 1 
# and some other number, and then computes the sum of those multiples. For 
# instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 
# 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Input:
# An integer
# Output:
# An integer

# Explicit requirements:
# Find the sum of all numbers that are multiples of 3 and 5 between 1 and 
# argument
# argument > 1

# Implicit requirements:
# Multiples of 3 or 5 means that num % 3 (or 5) == 0

# Data Structure:
# Integers

# Algorithm:
# create sum variable init. to 0
# Iterate over a range from 1 up to and including num
# for each element in range
#   Add it to sum if element % 3 or element % 5 == 0
# return sum

# def multisum(num)
#   sum = 0
#   (1..num).each do |integer|
#     if integer % 3 == 0 or integer % 5 == 0
#       sum += integer
#     end
#   end
#   sum
# end

# def multisum(num)
#   sum = 0
#   counter = 1
#   loop do
#     if counter % 3 == 0 or counter % 5 == 0
#       sum += counter
#     end
#     break if counter == num
#     counter += 1
#   end
#   sum
# end

def multisum(num)
  (1..num).inject(0) do |sum, int|
    if (int % 3 == 0 || int % 5 == 0)
      sum + int
    else
      sum
    end
  end
end

def multisum(num)
  (1..num).inject(0){ |sum, int| int % 3 == 0 || int % 5 == 0 ? sum + int : sum }
end


# Test Cases

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168