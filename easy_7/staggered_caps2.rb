# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string, start_case="up")
  up_down = [:upcase, :downcase]

  up_down.reverse! if start_case == "down"

  string.chars.each_with_object('') do |char, staggered_string|
    staggered_string << char.send(up_down[0])
    up_down.reverse! if ('a'..'z').include?(char.downcase)
  end
end

# further exploration:
def staggered_case(string, count_non_alpha=false)
  up_down = [:upcase, :downcase]

  string.chars.each_with_object('') do |char, staggered_string|
    staggered_string << char.send(up_down[0])
    if !count_non_alpha
      up_down.reverse! if ('a'..'z').include?(char.downcase)
    else
      up_down.reverse!
    end
  end
end

p staggered_case2('I Love Launch School!', "up", true)
p staggered_case2('I Love Launch School!')
# Example:

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'