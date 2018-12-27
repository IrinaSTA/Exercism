class Complement
  def self.of_dna(dna_strand)
    rna_strand = ""
    dna_strand.each_char do |char|
      rna_strand += "C" if char == "G"
      rna_strand += "G" if char == "C"
      rna_strand += "A" if char == "T"
      rna_strand += "U" if char == "A"
    end
    return rna_strand
  end
end
