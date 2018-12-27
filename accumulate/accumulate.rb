class Array

  def accumulate
    result = []
    self.each { |item| result << yield(item) }
    return result
  end

end
