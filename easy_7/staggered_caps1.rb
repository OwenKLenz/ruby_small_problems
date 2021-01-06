# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# input:
# a string
# output:
# a staggered case string

# rules:
# return text should alternate upcase downcase, etc.
# non alpha characters still cause case alternating even though they don't have cases

# algorithm:
# initialize a binary variable (boolean?) that can cycle

# iterate over string
#   if bin variable is cap, upcase letter
#   else downcase letter
#   swap bin variable
# end
# return string

def staggered_case(string)
  up_down = true
  staggered_string = ''
  string.each_char do |char|
    staggered_string << (up_down ? char.upcase : char.downcase)
    up_down = !up_down
  end
  staggered_string
end

# OR

def staggered_case2(string)
  up_down = [:upcase, :downcase]

  string.chars.each_with_object('') do |char, staggered_string|
    staggered_string << char.send(up_down[0])
    up_down.reverse!
  end
end

# further exploration:
def staggered_case3(string, start_case="up")
  up_down = [:upcase, :downcase]

  up_down.reverse! if start_case == "down"

  string.chars.each_with_object('') do |char, staggered_string|
    staggered_string << char.send(up_down[0])
    up_down.reverse!
  end
end


# Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS') == 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case3('I Love Launch School!', "down") == "i lOvE LaUnCh sChOoL!"
p staggered_case3('ALL_CAPS', "down") == "aLl_cApS"
p staggered_case3('ignore 77 the 444 numbers', "down") == "iGnOrE 77 tHe 444 nUmBeRs"
