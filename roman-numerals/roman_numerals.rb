require 'pry'

class Integer

  ROMAN_NUMERALS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    14 => 'XIV',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman
    number = self
    answer = ''
    binding.pry
    divisor = 1000
    binding.pry
    to_calc = number
    until to_calc == 0 do
      repeat = number / divisor
      binding.pry
      to_calc = number % divisor
      binding.pry
      answer.concat(ROMAN_NUMERALS[divisor] * repeat)
      binding.pry
      divisor = divisor / 10
    end
    binding.pry
    # answer.concat('I' * to_calc)
    return answer
  end

  # I, II, III, IV, V, VI, VII, VIII, IX, X ones
  # X, XX, XXX, XL, L, LX, LXX, LXXX, XC, C tens
  # C, CC, CCC, CD, D, DC, DCC, DCCC, CM, M hundreds
  # M, MM, MMM

end
