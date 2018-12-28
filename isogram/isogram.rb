class Isogram

  def self.isogram?(str)
    alpha_chars = str.downcase.scan(/[a-z]/)
    alpha_chars == alpha_chars.uniq
  end

end
