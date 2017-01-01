class Gigasecond
  def self.from(t)
    t + Time::Span.new(0, 0, 10**9)
  end
end
