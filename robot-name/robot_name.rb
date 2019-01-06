class Robot

  attr_reader :name

  def initialize
    @name = create_name
  end

  def reset
    @name = create_name
  end

  def self.forget
  end

  def create_name
    2.times.collect{random_letter}.join +
    3.times.collect{random_number}.join
  end

  LETTERS = ('A'..'Z').to_a

  def random_letter
    LETTERS[rand(LETTERS.count)]
  end

  def random_number
    rand(9)
  end

end
