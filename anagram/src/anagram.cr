class Anagram
  def self.find(str : String, words : Array(String))
    w = [] of String

    s = str.downcase.chars.sort

    words.each do |word|
      next if str.size != word.size
      next if str == word

      w << word if s == word.chars.sort
    end

    w
  end
end
