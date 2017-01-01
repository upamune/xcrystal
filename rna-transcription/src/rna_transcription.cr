class RnaComplement
  CONVERTION_TABLE = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def self.of_dna(dna)
    dna.gsub(/#{CONVERTION_TABLE.keys.join("|")}/, CONVERTION_TABLE)
  end
end
