class Phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def word_count
    word_count = {}
    @phrase.downcase.scan(/\w+'\w|\w+/).each do |word|
      word_count[word] = 1 if word_count[word] == nil
      word_count[word] += 1
    end
    return word_count
  end
end
