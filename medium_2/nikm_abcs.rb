# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Input: string (case insensitive, maybe just upcase it)
# Output: a boolean

# Data structure:
#   Hash with a boolean value and an array key (the two paired letters)

# Rules:
#   If a letter is used from a block that has already been used, return false
  
# Algorithm:
#   Create a hash of all of the pairs as keys in an array paired to true
#   Iterate over the letters and for each letter
#     find that letter's key-value pair:
#       { 'BO' => true] }
#       Iterate over keys and if key includes current letter
#         check hash on that key
#         then break
#   if the value is false, return false
#   other wise, set the value to false and proceed
#   return true at the end

def block_word?(string)
  blocks = { 'BO' => true, 'XK' => true, 'DQ' => true, 'CP' => true,
             'NA' => true, 'GT' => true, 'RE' => true, 'FS' => true,
             'JW' => true, 'HU' => true,'VI' => true, 'LY' => true, 
             'ZM' => true }

  string.upcase.chars.each do |letter|
    if !(/[A-Z]/ =~ letter)
      puts "Invalid character: #{letter}"
      return false
    end

    blocks.keys.each do |key|
      if key.include?(letter)
        return false if !blocks[key]
        blocks[key] = false
        break
      end
    end
  end
  true
end

def block_word?(string)
  used_blocks = ''
  blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  string.upcase.chars.each do |char|
    return false if used_blocks.include?(char) || !(/[A-Z]/ =~ char)
    blocks.each do |block|
      if block.include?(char)
        used_blocks.concat(block)
        break
      end
    end
  end
  true
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  !BLOCKS.any? { |block| up_string.count(block) >= 2 }
end

# Examples:

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true