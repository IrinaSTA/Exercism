class Raindrops

  @@raindrops_dictionary = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(num)
    self.build_string(num) || "#{num}"
  end

  private

  def self.build_string(num)
    factors = self.factors(num)
    if factors.empty? == false
      @@raindrops_dictionary.values_at(*factors).join("")
    end
  end

  def self.factors(num)
    @@raindrops_dictionary.keys.collect {|key| key if num % key == 0}.compact
  end

end
