class Prime

  def nth(n)
    counter = 1
    number = 1
    until counter == n do
      counter += 1 if number
    end
  end

  def prime?(n)
    answers = (2..(n - 1)).to_a.map {|num| true if n % num == 0}
    return false if answers.include?(true)
    true
  end

end
