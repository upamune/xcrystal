class Squares
  def self.square_of_sum(i : Int)
    Range.new(1, i).sum ** 2
  end

  def self.sum_of_squares(i : Int)
    Range.new(1, i).to_a.reduce(0) { |sum, i| sum + i ** 2 }
  end

  def self.difference_of_squares(i : Int)
    square_of_sum(i) - sum_of_squares(i)
  end
end
