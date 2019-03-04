class Anagram

  def initialize(detector)
    @detector = detector
  end

  def match(word_arr)
    word_arr.map{ |word| word if anagram?(word) }.compact
  end

  private

  def anagram?(word)
    same_letters?(@detector, word) &&
    not_same_word?(@detector, word)
  end

  def same_letters?(word1, word2)
    analyse(word1) == analyse(word2)
  end

  def analyse(word)
    word.downcase.split('').sort
  end

  def not_same_word?(word1, word2)
    word1.downcase != word2.downcase
  end

end
