require 'pry'
class Pangram

  def self.pangram?(sentence)
    alphabet = ("a".."z").to_a + ("A".."Z").to_a
    answer = alphabet.map {|letter| true if sentence.include?(letter)}
    return true if answer.count(true) == 26
    false
  end

end
