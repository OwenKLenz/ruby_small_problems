# Rewrite your recursive fibonacci method so that it computes its results without recursion.

def fibonacci(num)
  counter = 1
  fib1 = 0
  fib2 = 1
  until counter > num do
    # p fib2
    fib1, fib2 = fib2, fib2 + fib1
    counter += 1
  end
  fib1
end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

fibonacci(15)
p fibonacci(60)