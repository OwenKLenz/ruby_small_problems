# The || operator returns a truthy value if either or both of its operands are 
# truthy, a falsey value if both operands are falsey. The && operator returns a 
# truthy value if both of its operands are truthy, and a falsey value if either 
# operand is falsey. This works great until you need only one of two conditions 
# to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false


# The problem:
# Input:
# Two conditional statements

# Output:
# true or false

# Explicit requirements:
# Return true only if one of the statements is truthy and the other is falsy

# Implicit requirements:
# Two falses is false and two trues is false

# Data Structure:
# Boolean

# Algorithm:
# if first statement is true
#   if second statement is false
#     return true
# elsif 2nd statement is true return true
# return false

# def xor?(statement1, statement2)
#   if statement1 == true
#     if statement2 == false
#       return true
#     end
#   elsif statement2 == true
#     return true
#   end
#   false
# end

# Or much more simply
def xor?(statement1, statement2)
  !(statement1 == statement2)
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false


# Shortcircuting with xor:
# Shortcircuiting won't happen because regardless of whether the first value is 
# true or false, you will always have to check the 2nd value to insure that it
# is the opposite

# Example of xor in the real world:
# An intersection with two traffic lights. You don't want both lights to green
# cause that would cause accidents. You don't want both lights to be red because
# then traffic would sit still forever. You want one light green and one light 
# red at all times.