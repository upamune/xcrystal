class Pangram
  def self.pangram?(str : String)
    ("a".."z").all? { |ch| str.downcase.includes?(ch) }
  end
end
