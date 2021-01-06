# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	    'A'
# 80 <= score < 90	      'B'
# 70 <= score < 80	      'C'
# 60 <= score < 70	      'D'
# 0 <= score < 60	        'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Input: 3 integer arguments between 0 and 100 inclusive
# Ouput: A letter grade (string)

# Rules:
# Method should accept 3 integer grade arguments
# find the average of the 3 integers
# return a string appropriate to that average
# Scores will not be less than 0 or greater than 100

# Algorithm:
# Set average =add the integer arguments and divide by 3
# Case on average
# when 90-100
#   "A"
# when 80-89
#   "B"
# etc...

def get_grade(*grades)
  average = grades.sum / grades.size
  
  case 
  when average > 90
    "A"
  when average >= 80 && average < 90
    "B"
  when average >= 70 && average < 80
    "C"
  when average >= 60 && average < 70
    "D"
  else
    "F"
  end
end

GRADES_HASH = {
                 0...60 => "F",
                 60...70 => "D",
                 70...80 => "C",
                 80...90 => "B",
                 90.. => "A" # Infinite range
              }

def get_grade2(*grades)
  average = grades.sum / grades.size
  
  GRADES_HASH.each do |range, grade|
    return grade if range.include?(average)
  end
end

# Example:

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

p get_grade2(95, 90, 93) == "A"
p get_grade2(50, 50, 95) == "D"
p get_grade2(120, 400, 1000) == "A"