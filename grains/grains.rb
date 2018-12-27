class Grains

  def self.square(n)
    raise ArgumentError if n > 64 || n <= 0
    2 ** (n - 1)
  end

  def self.total
    (1..64).to_a.map { |each| square(each) }.inject("+")
  end

end
