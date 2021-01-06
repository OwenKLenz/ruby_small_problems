# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Problem:
# input:
# two integers
# output:
# a string with two interpolated integers

# Rules:
# 1 meter^2 == 10.7639 feet
# area = length * width

# Data Structure:
# strings and integers

# Algorithm:
# Prompt user for length
# Prompt user for width
# Calculate the area (length * width)
# Display the result in a string.

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width
area_feet = area * 10.7639

puts "The area of the room is #{format('%.2f',area)} square meters (#{format('%.2f', area_feet)} square feet)."

# Now defaulting to feet

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_feet = length * width
area_inches = area_feet * 144
area_centimeters = area_inches * 2.54

puts "The area of the room is #{format('%.2f',area_feet)} square meters (#{format('%.2f', area_inches)} square inches or #{format('%.2f', area_centimeters)} square centimeters."


# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).