require "big"

class Series
  @d : Array(Int32)

  def initialize(str : String)
    @d = str.chars.map(&.to_i)
  end

  private def slice(size : Int)
    arr = [] of Array(BigInt)
    b = @d.map { |d| BigInt.new(d) }

    (b.size - size + 1).times do |i|
      arr << b[i..(i + size - 1)]
    end

    arr
  end

  def largest_product(n : Int) : Int
    # TODO: どうにかしたい
    raise ArgumentError.new("") if n > @d.size
    raise ArgumentError.new("") if n < 0
    return 1 if n == 0 && @d.size != 0

    slice(n).map(&.product).max
  end
end

