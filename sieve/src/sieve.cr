class Primes
  def self.sieve(n : Int)
    prime = [] of Int32
    num = (2..n).to_a

    while !num.empty?
      prime << num.shift
      num = num.reject { |i| i % prime[prime.size - 1] == 0 }
    end

    prime
  end
end
