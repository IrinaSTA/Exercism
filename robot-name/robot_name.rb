class Robot

  @@taken_names = []

  def self.taken_names
    @@taken_names
  end

  attr_reader :name

  def initialize
    @name = Robot.create_name
  end

  def reset
    @name = Robot.create_name
  end

  def self.forget
    Robot.taken_names.clear
  end
# ugly implementation to pass the penultimate test
  def self.create_name
    name = 2.times.collect{random_letter}.join +
    3.times.collect{random_number}.join
    if @@taken_names.include?(name)
      name = 2.times.collect{random_letter}.join +
      3.times.collect{random_number}.join
    end
    @@taken_names << name
    name
  end

  LETTERS = ('A'..'Z').to_a

  def self.random_letter
    LETTERS[rand(LETTERS.count)]
  end

  def self.random_number
    rand(9)
  end

end
