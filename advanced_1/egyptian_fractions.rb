

# Find the largest 1/n fraction that is less than the rational number
#   If 1/1 if smaller than the rational, start there
#   Otherwise, move to 1/2 
#   Once you find a unit fraction smaller than the rational subtract that fraction from the rational and repeat with the new rational until the new number is itself a unit fraction.

def egyptian(rational)
  array = []
  denom = 1
  until rational == 0
    loop do 
      break if Rational(1, denom) <= rational
      denom += 1
    end
    array << denom
    rational -= Rational(1, denom)
    denom += 1
  end
array
end

p egyptian(Rational(1, 2))
p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(4, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(denoms)
  denoms.inject(0) do |accum, denom|
    accum + Rational(1, denom)
  end
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)