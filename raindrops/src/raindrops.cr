class Raindrops
  def self.drops(i : Int) : String
    out = i.to_s

    case {i % 3 == 0, i % 5 == 0, i % 7 == 0}
    when {true, false, false}
      out = "Pling"
    when {false, true, false}
      out = "Plang"
    when {false, false, true}
      out = "Plong"
    end

    out
  end
end
