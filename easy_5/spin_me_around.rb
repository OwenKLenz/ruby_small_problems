# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end
str = "hello world"
p spin_me(str) # "olleh dlrow"
p str # "hello world"

# This method should return a different string object. This is because the method split return a new object, an array of the words in string. All of the method calls after split will then be mutating and returning this new array object, which will finally be joined, returning a new string object, unrelated to the original string.