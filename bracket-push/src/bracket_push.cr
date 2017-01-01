class Brackets
  OPEN_BRACKETS = ['(', '[', '{']
  CLOSE_BRACKETS = [')', ']', '}']

  def self.are_valid?(str : String) : Bool
    stack = [] of Char

    str.chars.each do |ch|
      if OPEN_BRACKETS.includes?(ch)
        stack.push(ch)
      elsif CLOSE_BRACKETS.includes?(ch)
        return false if stack.empty?
        b = stack.pop()
        return false if CLOSE_BRACKETS.index(ch) != OPEN_BRACKETS.index(b)
      end
    end

    return false if !stack.empty?

    true
  end
end
