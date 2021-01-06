# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Input: A string
# Output: A string with english numbers converted to digits

# Considerations:
# lowercase english numbers vs uppercase?
# Handling Punctuation

# Algorithm:
# numbers hash loopup table for converting words to integers

# Each with object with split string with a string memo:
#   Iterate over the words
    # punctuation = ''
    #   strip punctuation
    #     if last char in word isn't alpha
    #     delete it and save in punctuation
#   If word is not number (not in lookup table)
#     append word + punctuation to memo
#   else 
      # convert word to int (lookup table)
      # add punctuuation back on
      # append to memo

CONVERTED_NUM_MARKER = '~'

def phone_numberizer(phone_number)
  phone_number.insert(0, '(')
  phone_number.insert(4, ') ')
  phone_number.insert(9, '-')

  phone_number
end

def number_joiner!(string)
  counter = 0

  loop do
    if string[counter] == ' ' && 
       /[0-9]/ =~ string[counter + 1] &&
       /[0-9]/ =~ string[counter - 2] &&
       string[counter + 2] == CONVERTED_NUM_MARKER &&
       string[counter - 1] == CONVERTED_NUM_MARKER
       string.slice!(counter)
       counter -= 1
    end

    counter += 1

    return nil if counter == string.size
  end
end

def phone_num_finder(str)
  phone_num_locations = []
  counter = 0
  num_start =  0
  num_end = 0

  str.chars.each_with_index do |char, index|
    if /[0-9]/ =~ char
      counter += 1
      num_start = index if counter == 1
    else
      counter = 0
    end

    if counter == 10
      counter = 0
      num_end = index
      phone_num_locations << (num_start..num_end)
    end
  end

  phone_num_locations
end

def word_to_digit(string)
  num_covert_hash = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                      'four' => '4', 'five' => '5', 'six' => '6', 
                      'seven' => '7', 'eight' => '8', 'nine' => '9' }

  converted_array = string.split.each_with_object([]) do |word, memo|

    punctuation = !!(/[A-Za-z]/ =~ word[-1]) ? '' : word.slice!(-1)

    if num_covert_hash[word.downcase]
      memo << num_covert_hash[word.downcase] + CONVERTED_NUM_MARKER + punctuation
    else
      memo << word + punctuation
    end
  end

  string = converted_array.join(' ')

  number_joiner!(string)

  string.delete!(CONVERTED_NUM_MARKER)

  phone_number_locations = phone_num_finder(string)

  phone_number_locations.each do |range|
    string[range] = phone_numberizer(string[range])
  end

  p string
end

# def word_to_digit(string)
#   num_covert_hash = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }
  
#   num_covert_hash.each { |k, v| string.gsub!(k, v) }
#   string
# end

# Further Exploration

# Define a method that accepts a string and inserts phone number characters into it
#   Accepts the characters from the original string at which the 10 consecutive numbers are located

# Acquiring the indexes at which the consecutive numbers are located:
#   Iterate over string with index
#     If number is found, record start index
      # increment counter
  #     if non number char is found, counter
  #       if counter gets to 10
  #           record end index
  # pass appropriate range of characters to the phone numberizing method

# Example:

p word_to_digit("My phone number is zero one two three four five one THREE "\
                "tHrEe seveN. Isn't it one three three seven?") ==
                "My phone number is (012) 345-1337. Isn't it 1337?"
