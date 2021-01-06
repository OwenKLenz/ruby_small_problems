# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# input:
# String
# output:
# String

# Rules:
# Remove all consecutive duplicate letters before returning the string

# Algorithm:
# Non_mutating:
# intialize an empty array
# loop over the string, if string[counter] != to last character of empty array
#   push character to empty array
# return array after joining it

def crunch(string)
  counter = 0
  str = ''
  loop do
    break if counter == string.size
    if string[counter] != str[-1]
      str << string[counter]
    end
    counter += 1
  end
  str
end

def crunch2(string)
  array = []
  string.size.times do |i|
    array << string[i] if string[i] != array.last
  end
  array.join('')
end

def crunch3(string)
  (0...string.size).each_with_object('') do |i, crunch_text| 
    crunch_text << string[i] if string[i] != crunch_text[-1]
  end
end



# Examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

p crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch2('4444abcabccba') == '4abcabcba'
p crunch2('ggggggggggggggg') == 'g'
p crunch2('a') == 'a'
p crunch2('') == ''

p crunch3('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch3('4444abcabccba') == '4abcabcba'
p crunch3('ggggggggggggggg') == 'g'
p crunch3('a') == 'a'
p crunch3('') == ''