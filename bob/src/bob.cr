class Bob
  def self.hey(in)
    out = "Whatever."

    case in
    when /^\s*$/
      out = "Fine. Be that way!"
    when in.upcase == in
      out = "Whoa, chill out!"
    when in[in.size - 1] == "?"
      out = "Sure."
    end

    out
  end
end
