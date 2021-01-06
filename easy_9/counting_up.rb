# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# input:
# an integer

# ouput:
# an array

# rules:
# arguments will always be integers greater than 0
# return an array of all of the values between 1 and the argument in an array

# algorithm:
# create a range of 1..num and convert it to an array (to_a)

def sequence(num)
  (1..num).to_a
end

# or...

# Iterate over 1 up to num and append each value to a return array
# return the array

def sequence2(num)
  arr = []
  
  1.upto(num) do |n|
    arr << n
  end
  arr
end

# or...

# each _with_object with an array over the range 1..num appending each value to the array

def sequence3(num)
  (1..num).each_with_object([]) do |n, arr|
    arr << n
  end
end



# Further exploration:

# algorithm:
# conditional, if num <= 0
# create a range starting from num
# otherwise create a range up to num
# use a ternary expression to determine the range and then call to_a on the result

def sequence4(num)
  (num > 0 ? 1..num : num..1).to_a
end


# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence2(5) == [1, 2, 3, 4, 5]
p sequence2(3) == [1, 2, 3]
p sequence2(1) == [1]

p sequence3(5) == [1, 2, 3, 4, 5]
p sequence3(3) == [1, 2, 3]
p sequence3(1) == [1]

p sequence4(5) == [1, 2, 3, 4, 5]
p sequence4(3) == [1, 2, 3]
p sequence4(1) == [1]
p sequence4(-5) == [-5, -4, -3, -2, -1, 0, 1]
p sequence4(-3) == [-3, -2, -1, 0, 1]
p sequence4(-1) == [-1, 0, 1]
p sequence4(0) == [0, 1]