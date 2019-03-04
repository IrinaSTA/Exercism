class Luhn

  def self.valid?(number)
    return false unless self.valid_length?(number) &&
    self.all_valid_chars?(number)

    self.luhn_sum(number) % 10 == 0
  end

  def self.valid_length?(number)
    number.scan(/\d/).length > 1
  end

  def self.all_valid_chars?(number)
    (number.scan(/\D/) - number.scan(/\s/)).empty?
  end

  def self.luhn_sum(number)
    number.
    reverse.
    scan(/\d/).
    map(&:to_i).
    map.with_index{
      |num, index| index.odd? ? self.double_luhn_digit(num) : num
    }.sum
  end

  def self.double_luhn_digit(digit)
    result = digit * 2
    result >= 10 ? result - 9 : result
  end

  # private_class_method :valid_length?, :all_valid_chars?, :luhn?, :luhn_sum, :double_luhn_digit

end
