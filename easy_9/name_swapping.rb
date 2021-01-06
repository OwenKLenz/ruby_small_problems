# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Input: string Output: string

# Rules:
# return value should be a new string with the names reversed and comma separated

# Algorithm:
# split names on spaces
# reverse the array
# rejoin names with space and a comma

# or...

# obtain index of space with index method
# slice! up to and including space
# chomp space
# append sliced string to remainder of original string

def swap_name(name)
  name.split.reverse.join(', ')
end

def swap_name2(name)
  space_index = name.index(' ')
  first_name = name.slice!(0..space_index).chop
  name += ', ' + first_name
end

# and swap_name2 refactored as a one liner
def swap_name3(name)
  name += ', ' + name.slice!(0..name.index(' ')).chop
end

# Examples

p swap_name('Joe Roberts') == 'Roberts, Joe'

p swap_name2('Joe Roberts') == 'Roberts, Joe'

p swap_name3('Joe Roberts') == 'Roberts, Joe'