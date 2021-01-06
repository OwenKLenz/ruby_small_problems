# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Problem:
# Input:
# 6 numbers
# Output:
# A string

# Rules:
# Acquire 6 numbers
# The 6th number is compared to the first 5

# Questions:
# Accepts floats?

# Data Structure:
# Array for the 5 numbers
# Integer for the 6th number
# output a string at the end

# Algorith:
# Prompt the user for numbers 1-5
# Store them in an array
# Get the 6th number
# iterate over (or use Array#include) array checking each element for number 6
# if found 
#   print success message
# else
#   print failure message

COUNTER = 5

def suffix_determination(counter)
  case counter
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end

def acquire_nums(counter)
  suffix = suffix_determination(counter)
  num = ''

  puts "Please enter the #{counter.to_s + suffix} number:"
  loop do
    num = gets.chomp
    break if valid_entry?(num)
    puts "Please enter a number:"
  end
  num.to_i
end

def valid_entry?(num)
  num == num.to_i.to_s
end

def acquire_last
  last = ''
  
  loop do
    last = gets.chomp
    break if valid_entry?(last)
    puts "Please enter a number:"
  end
  last.to_i
end

array = []

COUNTER.times do |i|
  array << acquire_nums(i + 1)
end

puts "Please enter the last number:"
last = acquire_last

puts "The number #{last} #{array.include?(last) ? "does" : "does NOT"} appear"\
     " in #{array}."

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].