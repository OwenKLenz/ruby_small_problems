# Write a program that prompts the user for two positive integers, and then 
# prints the results of the following operations on those two numbers: addition, 
# subtraction, product, quotient, remainder, and power. Do not worry about 
# validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103


# Problem:
# Input: 
# Two positive integers
# Output:
# Output strings containing each operation and the solution

# Rules:
# Get two integers
# perform operations on the numbers

# Data Structure:
# Two integers and some strings

# Algorithm:
# prompt user for num1
# prompt user for num2
# print each string with the operation and the numbers and solution interpolated

def prompt
  print "=> "
  gets.chomp
end

puts "Enter number 1:"
num1 = prompt.to_f
puts "Enter number 2:"
num2 = prompt.to_f

if num1.to_s.end_with?('.0')
  num1 = num1.to_i
end

if num2.to_s.end_with?('.0')
  num2 = num2.to_i
end

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
if num2 != 0
  puts "#{num1} / #{num2} = #{num1.to_f / num2}"
  puts "#{num1} % #{num2} = #{num1 % num2}"
else
  puts "Can't divide by zero"
end
puts "#{num1} ^ #{num2} = #{num1 ** num2}"