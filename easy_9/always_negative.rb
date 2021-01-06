# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# input:
# an int

# output:
# an int

# rules:
# If argument is greater than zero, return its negative
# else return the number
# there is no -0

# algorithm:
# if num > 0
#   multiply num by -1 and return it 
# otherwise return the number    

require 'benchmark'


def negative(num)
  num > 0 ? -num : num
end

def negative2(num)
  -num.abs
end

# Further exploration:
puts Benchmark.measure {
  5000000.times do
    negative(10)
    negative(-10)
    negative(0)
  end
}

puts Benchmark.measure {
  5000000.times do
    negative2(10)
    negative2(-10)
    negative2(0)
  end
}

# Examples:

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
