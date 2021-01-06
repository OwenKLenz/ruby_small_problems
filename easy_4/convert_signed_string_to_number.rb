# In the previous exercise, you developed a method that converts simple numeric 
# strings to Integers. In this exercise, you're going to extend that method to 
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should 
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. You may, however, use the 
# string_to_integer method from the previous lesson.

# Algorithm:
# If ['+', '-'].include?(string.first)
#   sign = string.shift

DECIMAL_HASH = { "0" => 0,
                 "1" => 1,
                 "2" => 2,
                 "3" => 3,
                 "4" => 4,
                 "5" => 5,
                 "6" => 6,
                 "7" => 7,
                 "8" => 8,
                 "9" => 9 }

def obtain_sign(sign)
  sign == '+' ? 1 : -1
end

def string_to_integer(string_num)
  string_num.inject(0){ |number, char| number = number * 10 + DECIMAL_HASH[char] }
end

def string_to_signed_integer(string)
  if ['-', '+'].include?(string[0])
    (string[0] == '+' ? 1 : -1) * string_to_integer(string[1..-1].chars)
  else
    string_to_integer(string.chars)
  end
end

# def string_to_signed_integer(string_num)
#   sign = 1
#   num_array = string_num.chars
  
#   if ['+', '-'].include?(num_array.first)
#     sign = obtain_sign(num_array.shift)
#   end
  
#   sign * string_to_integer(num_array)
# end

# Test Cases
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100