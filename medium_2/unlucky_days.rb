# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# Examples:

# Input: an integer (the year)
# Ouput: an integer (number of Friday the 13ths)

# Considerations:
# none

# Data structures:
# An array of months? Range?

# Algorithm:

# count the number of months (1-12) for which the 13th is a friday
#   Count (convert month range to an array) with a block
#     Block:
#     create a new date object on the argument year, current iteration month and day of 13
#     check if that date is a friday

require 'date'
def friday_13th(year)
  (1..12).to_a.count { |month| Date.new(year, month, 13).friday? }
end

# # Brute force:
# def friday_13th(year)
#   date = Date.new(year)
#   days_in_year = date.leap? ? 366 : 365
#   counter = 0
#   days_in_year.times do
#     counter += 1 if date.friday? && date.day == 13
#     date += 1
#   end
#   counter
# end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

def most_friday_13ths
  date = Date.new
  lookup_table = {}
  
  until date.year == Date.today.year do
    lookup_table[date.year] = friday_13th(date.year)
    date += 365
  end
  lookup_table
end

# Further Exploration:

def five_friday_count(year)
  five_friday_months = 0
  date = Date.new(year)

  (1..12).each do |current_month|
    fridays = 0
    until date.month != current_month
      date += 1
      fridays += 1 if date.friday?
    end
    five_friday_months += 1 if fridays == 5
  end

  five_friday_months
end

p five_friday_count(2019) == 4
p five_friday_count(2004) == 5

