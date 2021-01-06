# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!


# The problem:
# input:
# Two integers
# output:
# A string with with two integers interpolated

# Explicit requirements:
# Display both year and time til retirement
# Implicit requirements:
# Prompt user for age
# Age > 0

# Data Structure:
# 2 integers

# Algorithm:
# Constant for current year
# Prompt user for age
# Prompt user for retirement age
# subtract age from retirement age for years to go
# Add years to go to current year for retirement year
# Display string w/ interpolation

CURRENT_YEAR = 2019

puts "How old are you (years)?"
age = gets.chomp.to_i

puts "What age will you reture at?"
retirement = gets.chomp.to_i

years_to_go = retirement - age
retirement_year = CURRENT_YEAR + years_to_go

puts "Good news! Retirement is only #{years_to_go} years away in the year #{retirement_year}!"