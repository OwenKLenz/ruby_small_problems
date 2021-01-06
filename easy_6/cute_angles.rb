# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# input:
# a float

# output:
# a string

# Rules:
# convert a float into degrees, minutes and seconds
# 60 minutes per degree
# 60 seconds per minute
# Make sure to format the minute and second display to two places (with a leading 0 if necessary)

# Algorithm:
# divmod seems useful
# initialize degrees, minutes and seconds to 0
# whole degrees, remainder = float.divmod(1)
# converting partial degrees to minutes:
#   minutes = remainder * 60
#   whole minutes, seconds = minutes.divmod(1)
#   whole seconds = (seconds * 60).round
# Display formatted string with deg, min and sec interpolated with proper num of digits
# include proper symbols in string

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle)
  whole_degrees, remainder = angle.divmod(1)
  minutes = (remainder * MINUTES_PER_DEGREE).round(4)
  whole_minutes, remainder = minutes.divmod(1)
  rounded_seconds = (remainder * SECONDS_PER_MINUTE).round

  "#{whole_degrees % 360}#{DEGREE}#{format("%02d", whole_minutes)}'" +
  "#{format("%02d", rounded_seconds)}\""
end

# Test Case:
puts dms(30.6667)
puts dms(30.5)
puts dms(0)
puts dms(11)
puts dms(76.73)
puts dms(93.034773)
puts dms(254.6)
puts dms(-500)
puts dms(400)
puts dms(-40)
puts dms(-420)
puts dms(360)

# Examples:

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

# DEGREE = "\xC2\xB0"