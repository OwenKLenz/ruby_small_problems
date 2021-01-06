# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

# The problem:
# input:
# An integer
# output:
# An integer

# Explicit requirements:
# Number is greater than 0
# Must be able to return both the sum or the product
# Implicit requirements:

# Data Structure:
# Integer
# Algorithm:
# Prompt user for integer greater than 0
# Prompt user to choose sum or product
# Sum method:
  # 1.upto(number) add the numbers
# Product method:
  # 1.upto(number) multiply the numbers
  
def valid_num?(number)
  number == number.to_i.to_s
end

def sum(number)
  sum = 0
  1.upto(number){ |num| sum += num }
  sum
end

def product(number)
  product = 1
  1.upto(number){ |num| product *= num }
  product
end

def compute_sum_or_product(number, operation)
  (1..number.to_i).inject(operation)
end

puts "Please enter an integer greater than 0:"
number = ''
loop do
  print '=> '
  number = gets.chomp
  break if number.to_i > 0 and valid_num?(number)
  puts "Number must be greater than zero and also an integer:"
end

puts "Would you like the sum or the product of all numbers between 1 and your" \
" number?"
sum_or_product = nil
operation = nil

loop do
  print '=> '
  sum_or_product = gets.chomp.downcase
  if sum_or_product == 'sum' 
    operation = :+
    break
  elsif sum_or_product == 'product'
    operation = :*
    break
  end
  puts 'Please enter "sum" or "product":'
end

value = compute_sum_or_product(number, operation)

if sum_or_product == 'sum'
  puts "The sum of all numbers between 1 and #{number} is #{value}."
else
  puts "The product of all numbers between 1 and #{number} is " \
       "#{value}."
end

# Using inject:
# Use a range 1..number
# set operation to :+ for sum or :* for product
# The range calls inject on operation


# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.