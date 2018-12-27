class Isogram

  def self.isogram?(str)
    alpha_chars = str.downcase.scan(/[a-z]/)
    true if alpha_chars == alpha_chars.uniq
  end

end
