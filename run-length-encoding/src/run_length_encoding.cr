class RunLengthEncoding
  def self.encode(str : String)
    str.chars.chunks { |c| c }.map { |l, r|
      next l.to_s if r.size == 1
      r.size.to_s + l.to_s
    }.join
  end

  def self.decode(encoded_str : String)
    str = ""

    cnt = ""
    encoded_str.chars.each { |i|
      if i.ascii_number?
        cnt += i
      else
        cnt = "1" if cnt.empty?
        str += i.to_s * cnt.to_i
        cnt = ""
      end
    }

    str
  end
end
