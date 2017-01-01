class Atbash
  RAW_CHARS      = ('a'..'z').to_a
  CIPHERED_CHARS = ('a'..'z').to_a.reverse

  def self.encode(raw : String)
    raw.downcase.gsub(/\W/, "").chars.map { |ch|
      if idx = RAW_CHARS.index(ch) 
        ch = CIPHERED_CHARS[idx]
      end
      ch
    }.each_slice(5).map { |slice| slice.join }.join(" ")
  end
end
