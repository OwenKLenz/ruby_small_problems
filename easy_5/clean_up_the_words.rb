# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# input:
# string

# output:
# string

# Rules:
# Remove all non-alpha characters and replace with a space
# consecutive non-alpha characters should only return one space

# Algorithm:
# split string into characters
# for each_with_index on character
#   If !('a'..'z').include?(character.downcase)
#     if the previous character != ' '
#       character = space
#     else
#       character = ''
#     end
#   end
#   join them all back up

def cleanup(string)
  characters = string.chars
  characters.each_with_index do |char, index|
    if !('a'..'z').include?(char.downcase)
      if characters[index - 1] == ' '
        characters[index - 1] = ''
        characters[index] = ' '
      else
        characters[index] = ' '
      end
    end
  end
  characters.join
end

# OR...

def cleanup2(string)
  characters = string.chars
  characters.map!{ |char| !('a'..'z').include?(char.downcase) ? ' ' : char }
  characters.join.squeeze(' ')
end


# Test Cases:

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup2("---what's my +*& line?") == ' what s my line '