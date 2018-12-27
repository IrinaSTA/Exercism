class Isogram

  def self.isogram?(str)
    alpha_chars = str.downcase.scan(/[a-z]/)
    pairs = alpha_chars.combination(2).to_a
    return pairs.any? { |a, b| a == b } ? false : true
  end

end
