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

  LETTERS = {1=>"A", 2=>"B", 3=>"C", 4=>"D", 5=>"E", 6=>"F", 7=>"G", 8=>"H", 9=>"I", 10=>"J", 11=>"K", 12=>"L", 13=>"M", 14=>"N", 15=>"O", 16=>"P", 17=>"Q", 18=>"R", 19=>"S", 20=>"T", 21=>"U", 22=>"V", 23=>"W", 24=>"X", 25=>"Y", 26=>"Z"}

  def self.random_letter
    LETTERS[rand(26)]
  end

  def self.random_number
    rand(9)
  end
end
