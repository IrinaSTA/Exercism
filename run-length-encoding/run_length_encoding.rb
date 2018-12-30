class RunLengthEncoding

  def self.encode(input)
    output = ''
    if !input.empty?
      counter = 1
      current_letter = input.chars.first
      for char in input.chars[1..-1] do
        if char == current_letter
          counter += 1
        else
          if counter == 1
            output << "#{current_letter}"
          else
            output << "#{counter}#{current_letter}"
          end
          if input.chars.last == char
            output << "#{char}"
          end
          counter = 1
          current_letter = char
        end
      end
    end
    output
  end

end
