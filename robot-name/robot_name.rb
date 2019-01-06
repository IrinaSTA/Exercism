class Robot

  attr_reader :name

  def initialize
    @name = create_name
  end

  def reset
    @name = ''
  end

  def self.forget
  end

  def create_name
    random_letter + random_letter + "#{random_number}" + "#{random_number}" +
    "#{random_number}"
  end

  LETTERS = ('A'..'Z').to_a

  def random_letter
    LETTERS[rand(LETTERS.count)]
  end

  def random_number
    rand(9)
  end

end
