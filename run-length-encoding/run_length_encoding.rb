class RunLengthEncoding

  def self.encode(input)
    output = ''
    for each in self.break_into_blocks(input) do
      output << self.encode_block(each)
    end
    output
  end

  def self.decode(input)
    parts = self.break_into_parts(input)
    output = ''
    for each in parts do
      output << self.decode_part(each)
    end
    output
  end

  private

  # encoding methods

  def self.break_into_blocks(input)
    blocks = []
    while !input.empty? do
      two_parts = self.partition_in_two(input)
      blocks << two_parts[0]
      input = two_parts[1]
    end
    blocks
  end

  def self.partition_in_two(input)
    input.partition(get_first_block(input))[1, 2]
  end

  def self.get_first_block(input)
    first_letter = input.chars.first
    input.scan(/\A#{first_letter}+/)[0]
  end

  def self.encode_block(block)
    if block.length == 1
      "#{block[0]}"
    else
      "#{block.length}#{block[0]}"
    end
  end

  # decoding methods

  def self.break_into_parts(input)
    parts = []
    while !input.empty? do
      two_parts = self.partition_in_two_parts(input)
      parts << two_parts[0]
      input = two_parts[1]
    end
    parts
  end

  def self.decode_part(input)
    output = ''
    if input.length > 1
      input.delete(input[-1]).to_i.times do
        output << input[-1]
      end
    else
      output << input[0]
    end
    output
  end

  def self.get_first_part(input)
    input.scan(/\A(\d+\D|\D)/)[0][0]
  end

  def self.partition_in_two_parts(input)
    input.partition(get_first_part(input))[1, 2]
  end

end
