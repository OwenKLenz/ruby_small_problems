def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# nil is being returned for every invocation apart from the empty array because for the last 3 invocations, the elsif condition is executed. In this case, because there is no condition on the same line with the elsif, ruby looks at the code on the next line, the call to map, which returns an array, a truthy value, and as a result, the elsif branch gets executed and since it doesn't contain any code, it returns nil by default.

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
