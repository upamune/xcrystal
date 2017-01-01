class PascalsTriangle
  private def self.pascal_row(n)
    return [1] if n == 0

    prev = pascal_row(n - 1)

    ret = [] of Int32

    (prev.size - 1).times do |i|
      ret << (prev[i] + prev[i + 1])
    end

    [1, ret, 1].flatten
  end

  def self.rows(n : Int)
    raise ArgumentError.new("an Argument error for negative rows") if n < 0
    (1..n).map { |i| pascal_row(i-1) }
  end
end
