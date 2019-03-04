class Luhn

  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def self.valid?(number)
    luhn = Luhn.new(number)
    luhn.valid?(number)
  end

  def valid?(number)
    return false unless self.valid_length? &&
    self.all_valid_chars?

    self.luhn_sum % 10 == 0
  end

  def valid_length?
    number.scan(/\d/).length > 1
  end

  def all_valid_chars?
    (number.scan(/\D/) - number.scan(/\s/)).empty?
  end

  def luhn_sum
    number.
    reverse.
    scan(/\d/).
    map(&:to_i).
    map.with_index{
      |num, index| index.odd? ? double_luhn_digit(num) : num
    }.sum
  end

  def double_luhn_digit(digit)
    result = digit * 2
    result >= 10 ? result - 9 : result
  end

end
