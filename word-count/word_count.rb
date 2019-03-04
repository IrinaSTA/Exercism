class Phrase

  def word_count
    word_count = {}
    words.each do |word|
      if word_count[word] == nil
        word_count[word] = 1
      else
        word_count[word] += 1
      end
    end
    word_count
  end

  private

  def initialize(phrase)
    @phrase = phrase
  end

  def phrase
    @phrase
  end

  def words
    phrase.downcase.scan(/\w+'\w|\w+/)
  end
end
