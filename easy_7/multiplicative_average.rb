# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# input:
# array of ints

# output:
# a string with formatted float result

# rules:
# multiply all array elements(inject)
# divide result by size of array (should be float division)
# print the result with rounding to 3 decimals
# array will be non empty

# Algorithm:
# inject :* to array
# divide result by array.size.to_f
# save result in variable
# puts result with formatted interpolated result rounding to 3 decimal places

def show_multiplicative_average(array)
  result = array.inject(:*) / array.size.to_f

  puts "The result is #{format("%0.3f",result)}"
end

# Or...

def show_multiplicative_average2(array)
  result = 1
  
  array.each { |num| result *= num }
  result /= array.size.to_f
  
  puts "The result is #{format("%.3f",result)}"
end


# Examples:

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

show_multiplicative_average2([3, 5])