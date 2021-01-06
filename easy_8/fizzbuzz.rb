# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# input:
# two ints

# output:
# print a bunch of strings, depending on the iteration number

# rules:
# when num is divisible by 3 and 5 print FizzBuzz
# when num is divisible by 5 print Buzz
# when num is divisible by 3 print Fizz
# else print num
  
# algorithm:
# iterate between 1 and 15 (1.upto(15))
# if iteration is evenly divisible by 3 and 5 print...
# if iteration is evenly divisible by 5 print...
# if iteration is evenly divisible by 3 print...
# else print num
  

def fizzbuzz(num1, num2)

  num1.upto(num2) do |i|
    case
    when i % 5 == 0 && i % 3 == 0
      puts "FizzBuzz"
    when i % 5 == 0
      puts "Buzz"
    when i % 3 == 0 
      puts "Fizz"
    else
      puts i
    end
    puts i
  end
end

# Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz