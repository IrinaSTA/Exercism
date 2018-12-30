class RunLengthEncoding

  def self.encode(input)
    output = ''
    for each in self.break_into_blocks(input) do
      output << self.encode_block(each)
    end
    output
  end

  private

  def self.break_into_blocks(input)
    blocks = []
    while !input.empty? do
      two_parts = self.partition_in_two(input)
      blocks << two_parts[0]
      input = two_parts[1]
    end
    blocks
  end

  def self.encode_block(block)
    if block.length == 1
      "#{block[0]}"
    else
      "#{block.length}#{block[0]}"
    end
  end

  def self.get_first_block(input)
    first_letter = input.chars.first
    input.scan(/\A#{first_letter}+/)[0]
  end

  def self.partition_in_two(input)
    input.partition(get_first_block(input))[1, 2]
  end

end
