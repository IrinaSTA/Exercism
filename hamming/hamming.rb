class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    equivalent_nucleotides = strand1.chars.zip(strand2.chars)
    equivalent_nucleotides.count {|x, y| x != y}
  end
end




# class Hamming
#   def self.compute(strand1, strand2)
#       diff = 0
#       if strand1.length == strand2.length
#         (0...strand1.length).each do |index|
#           diff += 1 if strand1[index] != strand2[index]
#         end
#       else
#         raise ArgumentError, "Strands must be of equal length."
#       end
#       return diff
#   end
# end
