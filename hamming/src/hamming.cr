class Hamming
  def self.compute(a , b) : Int
    a.chars.zip(b.chars).count { |l,r| l != r }
  end
end
