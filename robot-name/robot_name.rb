# require 'pry'
# require 'benchmark'

# class Robot
#
#   def initialize
#     @name = Robot.assign_name
#   end
#
#   @@taken_names = []
#
#   def self.taken_names
#     @@taken_names
#   end
#
#   def name
#     @name
#   end
#
#   def reset
#     @name = Robot.assign_name
#   end
#
#   def self.forget
#     Robot.taken_names.clear
#   end
#
#   def self.assign_name
#     name_exists = true
#     while name_exists do
#       name = create_name
#       name_exists = @@taken_names.include?(name)
#     end
#     @@taken_names << name
#     name
#   end
#
#   def self.create_name
#     2.times.collect{random_letter}.join +
#     3.times.collect{random_number}.join
#   end
#
#   def self.random_letter
#     Array('A'..'Z').sample
#   end
#
#   def self.random_number
#     Array(1..9).sample
#   end
# end

class Robot
  def name
    @name ||= generate
  end

  def reset
    @name = nil
  end

private

  def generate
    random_letters + random_digits
  end

  def random_letters
    random_string(2) { [*"A".."Z"].sample }
  end

  def random_digits
    random_string(3) { [*0..9].sample }
  end

  def random_string(length, &block)
    length.times.map(&block).join
  end

end
