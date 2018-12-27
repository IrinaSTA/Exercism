class CollatzConjecture

  def self.steps(n)
    raise ArgumentError if n <= 0
    steps, result = 0, n
    until result == 1 do
      if result.even? == true
        result /= 2
      else
        result = result * 3 + 1
      end
      steps += 1
    end
    return steps
  end

end
