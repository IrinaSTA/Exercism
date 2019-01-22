require 'pry'
require 'benchmark'

class Robot

  @@taken_names = []

  def self.taken_names
    @@taken_names
  end

  attr_reader :name

  def initialize
    @name = Robot.get_name
  end

  def reset
    @name = Robot.get_name
  end

  def self.forget
    Robot.taken_names.clear
  end

  def self.get_name
    name_exists = true
    while name_exists do
      name = make_name
      name_exists = @@taken_names.include?(name)
    end
    @@taken_names << name
    name
  end

  def self.make_name
    2.times.collect{random_letter}.join +
    3.times.collect{random_number}.join
  end

  LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  def self.random_letter
    LETTERS[rand(26)]
  end

  def self.random_number
    rand(9)
  end
end
