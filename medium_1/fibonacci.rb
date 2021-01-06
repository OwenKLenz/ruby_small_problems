# Write a recursive method that computes the nth Fibonacci number, where n is an argument to the method.

# Input: integer
# output: integer

def fibonacci1(num)
  return 1 if num == 1 || num == 2
  fibonacci1(num - 1) + fibonacci1(num - 2)
end


def fibonacci2(num, counter=1, num1=1, num2=1)
  return num1 if counter == num
  fibonacci2(num, counter + 1, num2, num1 + num2 )
end


#                                     fib(6)
#                     fib(5) +                           fib(4)
#         fib(4) +                fib(3)          fib(3) +      fib(2)
#     fib(3)    +   fib(2) +  fib(2) + fib(1)  fib(2) + fib(1)     1
# fib(2) + fib(1)     1         1       1         1       1
#   1        1
