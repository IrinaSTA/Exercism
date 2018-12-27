class Series
  def initialize(string)
    @string = string
  end
  def slices(n)
    raise ArgumentError if n > @string.length
    index = 0
    slices = []
    (@string.length - (n - 1)).times do
      slices << @string.slice(index,n)
      index += 1
    end
    return slices
  end
end
