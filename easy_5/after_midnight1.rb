# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Input:
# Integer

# Output:
# String (formatted)

# Rules:
# Convert integer into minutes, and hours before or after midnight
# Properly format a string to display in a standard time of day format (24 hr clock)
# Negative integers = minutes before midnight
# Positive integers = minutes after midnight

# Algorithm:
# Constant = minutes in a day
initialize 
# convert total minutes to minutes % minutes in a day. Then work with the remainder (has added benefit of converting - numbers to positive number of minutes after midnight)
# hours, minutes = remainder_minutes.divmod(60)
# print formatted string (String#format) with hours and minutes separated by a :

MINUTES_IN_A_DAY = 24 * 60
DAYS_IN_A_WEEK = 7

WEEKDAYS = ["Sunday", "Monday", "Tuesday", "Wednesday",
            "Thursday", "Friday", "Saturday"]

def time_of_day(minutes)
  weekday, remainder_minutes = minutes.divmod(MINUTES_IN_A_DAY)
  p weekday.to_s + "day of week"
  p "remaining minutes" + remainder_minutes.to_s
  hours, minutes = remainder_minutes.divmod(60)
  
  p "#{WEEKDAYS[weekday]} #{format("%02d", hours)}:#{format("%02d", minutes)}"
end

# Test cases:

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Disregard Daylight Savings and Standard Time and other complications.