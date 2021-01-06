# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

# Input:
# Bill and tip percentage

# Output:
# A string with the tip amount and the total bill interpolated

# Rules:
# Dealing with the tip
#   Ask for a whole percentage(decimal value) and convert to a decimal later
# Must accept float values and perfrom calcs on floats
# Must format the interpolation to two decimal places

# Data Structure:
# A string and some floats

# Algorithm:
# Prompt user for bill amount
# Prompt user for tip as whole percentage
# Convert tip to a decimal
# calculate tip amount
# calculate total amount (tip + bill)
# display string

puts "Please enter your bill amount ($):"
bill_amount = gets.chomp.to_f
puts "Please enter the percentage you would like to tip (%):"
tip_percentage = gets.chomp.to_f

tip_percentage /= 100

tip = bill_amount * tip_percentage

total_bill = tip + bill_amount

puts "Your tip comes to $#{format('%.2f', tip)} and your total bill is $#{format('%.2f', total_bill)}."

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
