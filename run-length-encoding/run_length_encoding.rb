class RunLengthEncoding

  def self.encode(input)
    blocks = []
    while !input.empty? do
      two_parts = self.partition_in_two(input)
      blocks << two_parts[0]
      input = two_parts[1]
    end
    blocks
    output = ''
    for each in blocks do
      if each.length == 1
        output << "#{each[0]}"
      else
        output << "#{each.length}#{each[0]}"
      end
    end
    output
  end

  def self.get_first_block(input)
    first_letter = input.chars.first
    input.scan(/\A#{first_letter}+/)[0]
  end

  def self.partition_in_two(input)
    input.partition(get_first_block(input))[1, 2]
  end

end
