# Build a program that randomly generates and prints Teddy's age. To get the 
# age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

# Problem:
# input:
# none
# output:
# A string

# Requirements:
# age must be random
# age must be between 20 and 200

# Data Structure:
# string

# Algorithm:
# print a string
# within the string, interpolate rand(20..200)

puts "Enter a name:"
name = gets.chomp
puts "#{name.strip != '' ? name : "Teddy"} is #{rand(20..200)} years old!"