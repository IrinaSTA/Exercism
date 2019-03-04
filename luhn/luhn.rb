class Luhn

  def initialize(number)
    @number = number
  end

  def self.valid?(number)
    luhn = Luhn.new(number)
    luhn.valid?(number)
  end

  def valid?(number)
    return false unless self.valid_length?(number) &&
    self.all_valid_chars?(number)

    self.luhn_sum(number) % 10 == 0
  end

  def valid_length?(number)
    number.scan(/\d/).length > 1
  end

  def all_valid_chars?(number)
    (number.scan(/\D/) - number.scan(/\s/)).empty?
  end

  def luhn_sum(number)
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

  # private_class_method :valid_length?, :all_valid_chars?, :luhn?, :luhn_sum, :double_luhn_digit

end
