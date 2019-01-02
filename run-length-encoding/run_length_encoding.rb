class RunLengthEncoding

  def self.encode(input)
    output = ''
    for each in self.break_into_blocks(input, __method__) do
      output << self.encode_block(each)
    end
    output
  end

  def self.decode(input)
    output = ''
    for each in self.break_into_blocks(input, __method__) do
      output << self.decode_block(each)
    end
    output
  end

  private

  def self.break_into_blocks(input, method)
    blocks = []
    while !input.empty? do
      blocks << self.get_current_block(input, method)
      input = self.get_rest_of_string(input, method)
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

  def self.decode_block(input)
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

  def self.get_current_block(input, method)
    self.partition_in_two(input, method)[0]
  end

  def self.get_rest_of_string(input, method)
    self.partition_in_two(input, method)[1]
  end

  def self.partition_in_two(input, method)
    input.partition(get_first_block(input, method))[1, 2]
  end

  def self.get_first_block(input, method)
    if method == :decode
      input.scan(/\A(\d+\D|\D)/)[0][0]
    else
      first_letter = input.chars.first
      input.scan(/\A#{first_letter}+/)[0]
    end
  end

end
