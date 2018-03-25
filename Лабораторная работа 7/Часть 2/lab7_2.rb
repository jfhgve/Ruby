# Parent class
class Num
  attr_reader :num
  def initialize(number)
    @num = number
  end

  def print
    puts "Num: #{@num}"
  end

  def length
    @num.to_s.length
  end

  def returning
    @num
  end
end

# Inherited class
class NumWord < Num
  attr_reader :string
  def initialize(str, number)
    super(number)
    @string = str.delete("\n")
  end

  def print
    super
    puts "String: #{@string}"
  end

  def returning
    [super, @string]
  end

  def length
    [super, @string.length]
  end
end
