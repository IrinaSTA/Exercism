class Isogram

  def self.isogram?(str)
    chars = str.downcase.chars
    alpha_chars = chars.reject { |char| char == " " || char == "-" }
    pairs = alpha_chars.combination(2).to_a
    return pairs.any? { |a, b| a == b } ? false : true
  end

end
