# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# input:
# a number

# output:
# a doubled number (unless it's already a double number)

# rules:
# if the right half of the number is equal to the left half, return as is
# otherwise double it (* 2) and return it

# algorithm:
# define double_number?(num)
#   if the first half of the Integer#digits of the number == the second half
#     return true
#   else return false
# end    

# if number is a double_number? return number otherwise return number * 2

def double_number?(num)
  nums = num.digits
  middle = nums.size / 2

  nums[0...middle] == nums[middle...nums.size] && num.size.even?
end

def twice(num)
  if double_number?(num)
    num
  else
    num * 2
  end
end

# Or..

def twice2(num)
  if ((num / 10 ** (num.to_s.size / 2)).to_s * 2).to_i == num
    num
  else
    num * 2
  end
end

# Examples:

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

p twice2(37) == 74
p twice2(44) == 44
p twice2(334433) == 668866
p twice2(444) == 888
p twice2(107) == 214
p twice2(103103) == 103103
p twice2(3333) == 3333
p twice2(7676) == 7676
p twice2(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice2(5) == 10
# Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.