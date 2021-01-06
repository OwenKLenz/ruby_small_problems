# Write a method that will take a short line of text, and print it within a box.
# input:
# A string

# output:
# Several lines of strings formatted to be displayed as a box

# Rules:
# Width of box should be modular based on the length of string (width = str.length+ 4)

# Algorithm:
# Formatted string

# Create the static parts of the box with appropiate new lines, etc.
# then interpolate the string
# add modular spaces/dashes where appropriate * str.length

MAX_LINE_LENGTH = 76

def print_in_box(string)
  puts "+-#{'-' * string.length}-+"
  puts "| #{' ' * string.length} |"
  puts "| #{string} |"
  puts "| #{' ' * string.length} |"
  puts "+-#{'-' * string.length}-+"
end

# OR...

def print_in_box2(string)
  box_top = "+-#{'-' * string.length}-+\n| #{' ' * string.length} |"
  box_bottom = "| #{' ' * string.length} |\n+-#{'-' * string.length}-+"
  puts box_top
  puts "| #{string} |"
  puts box_bottom
end

# Displaying a truncated (to 76 chars) string in a box
def truncate_string(string)
  string[0..75]
end

def print_in_box3(string)
  if string.length > 76
    string = truncate_string(string)
  end
  box_top = "+-#{'-' * string.length}-+\n| #{' ' * string.length} |"
  box_bottom = "| #{' ' * string.length} |\n+-#{'-' * string.length}-+"
  puts box_top
  puts "| #{string} |"
  puts box_bottom
end

# Wrapping strings after 76 chars at the nearest word
# Algorithm:
# initialize lines to 0
# break string into words
# iterate over words
  # append words and spaces to array[lines]
  # if array[lines].length + word.length > 80
    # lines += 1
    # array[lines] = word
  

def string_wrap(string)
  wrapped_string = ['']
  lines = 0
  words = string.split
  words.each do |word|
    if wrapped_string[lines].length + word.length > MAX_LINE_LENGTH
      wrapped_string[lines].chop!
      lines += 1
      wrapped_string[lines] = word + ' '
    else
      wrapped_string[lines] << word + ' '
    end
  end
  wrapped_string.last.chop!
  wrapped_string
end

def max_length (string_array)
  string_array.max {|a, b| a.length <=> b.length}.length
end

def print_in_box4(string)
  wrapped_string_lines = string_wrap(string)
  box_length = max_length(wrapped_string_lines)
  box_top = "+-#{'-' * box_length}-+\n| #{' ' * box_length} |"
  box_bottom = "| #{' ' * box_length} |\n+-#{'-' * box_length}-+"
  
  puts box_top
  wrapped_string_lines.each do |line|
    puts "| #{line.center(box_length)} |"
  end
  puts box_bottom
end

# Example:

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.


print_in_box4("Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.")