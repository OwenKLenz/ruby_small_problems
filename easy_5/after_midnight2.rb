# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# The problem:
# Input:
# String

# Output:
# Integer

# Explicit requirements:
# Convert a time, as a string, to a number of minutes after time 0
# Two methods:
  # Minutes before midnight
  # Minutes after midnight
# Return an int
# Return value must be between 0 and 1439

# Implicit requirements:
# midnight should return zero ("00:00" and "24:00")

# Data Structure:
# String for input
# integer for output
# possibly an array for processing string

# Algorithm:
# After Midnight:
# split string with ':' delimiter
# multivariable assign minutes and hours to the resulting array
# Set total minutes to minutes.to_i + hours.to_i * 60
# return total

MINUTES_IN_A_DAY = 1440
MINUTES_IN_AN_HOUR = 60
# def after_midnight(time)
#   hours, minutes = time.split(':')
#   (minutes.to_i + hours.to_i * MINUTES_IN_AN_HOUR) % MINUTES_IN_A_DAY
# end

# def before_midnight(time)
#   hours, minutes = time.split(':')
#   (MINUTES_IN_A_DAY - minutes.to_i + hours.to_i * MINUTES_IN_AN_HOUR) %
#   MINUTES_IN_A_DAY
# end

# # Test cases:

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0
# p after_midnight('00:01') == 1
# p before_midnight('00:01') == 1439

require 'time'

MINUTES_IN_A_DAY = 1440
MINUTES_IN_AN_HOUR = 60

def before_midnight(time)
  ((Time.parse('24:00') - Time.parse(time)) / MINUTES_IN_AN_HOUR).to_i %
    MINUTES_IN_A_DAY
end

def after_midnight(time)
  p (MINUTES_IN_A_DAY - before_midnight(time)) % MINUTES_IN_A_DAY
end

p before_midnight('12:34') == 686
p before_midnight('00:00') == 0
p before_midnight('24:00') == 0
p before_midnight('00:01') == 1439

p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0
p after_midnight('00:01') == 1