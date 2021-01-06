# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

# input:
# a positive integer

# ouput:
# a positive integer

# rules:
# take a single integer argument
# reverse the digits
# return it
# leading zeros get omitted

# algorithm:
# convert num to string
# reverse it
# convert num to int

def reversed_number(num)
  num.to_s.reverse.to_i
end

def reversed_number2(num)
  num.digits.each_with_object('') { |n, str| str << n.to_s }.to_i
end
# Examples:

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
# Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

p reversed_number2(12345) == 54321
p reversed_number2(12213) == 31221
p reversed_number2(456) == 654
p reversed_number2(12000) == 21 # No leading zeros in return value!
p reversed_number2(12003) == 30021
p reversed_number2(1) == 1