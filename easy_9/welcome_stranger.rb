# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

# input:
# an array and a hash

# output: 
# a formatted string

# rules:
# accept an array of first, middle and last name and a hash of title and occupation keys/values
# return a nicely formatted string greeting the person with their title and occupation using proper element reference

# algorithm:
# puts a formatted string
# interpolate the name array joined with spaces
# interpolate the hash[:title] and hash[:occupation]
require 'pry'
def greetings(name, job_description)
  binding.pry
  puts "Hello #{name.join(' ')}! I hear you are the world's foremost "\
  "#{format('%{title} %{occupation}!', job_description)}"
end

# Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.