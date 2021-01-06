# Write a program that will ask for user's name. The program will then greet 
# the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# The problem:
# input:
# a name
# output:
# a string with the user's name interpolated

# Explicit requirements:
# Respond with a greeting using the name the user entered.

# Implicit requirements:
# Name should be upcased and '!' removed when name includes a '!'

# Data Structure:
# A string

# Algorithm:
# Prompt user for a name while name == empty string
# if name.last == '!'
#   print loud message
#     name.delete_suffix!('!')
#     name.upcase
# else
#   print regular message

puts "What's your name?"
name = ''
loop do
  name = gets.chomp
  break if name.strip != ''
  puts "No seriously, what's your name?"
end

if name.end_with?('!')
  puts "HELLO #{name.delete_suffix('!').upcase}! WHY ARE WE YELLING!?"
else
  puts "Hello, #{name}. Nice to meet you!"
end
  
# LS Solution with destructive methods

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
