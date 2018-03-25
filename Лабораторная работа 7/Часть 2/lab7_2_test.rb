require './lab7_2.rb'
require 'minitest/autorun'
# Testing class
class TestProg < MiniTest::Unit::TestCase
  def create_str
    @str = ''
    (rand(5) + 1).times do |_|
      @str += (0...rand(7) + 1).map { ('a'..'z').to_a[rand(26)] }.join
      @str += ' '
    end
    @str
  end

  def setup
    @str = create_str
    @numer1 = rand(1000)
    @numer2 = rand(1000)
    @obj1 = Num.new(@numer1)
    @obj2 = NumWord.new(@str, @numer2)
  end
  
  def test_1
    assert_equal(@obj1.returning, @numer1)
  end

  def test_2
    assert_equal(@obj1.length, @numer1.to_s.length)
  end

  def test_3
    assert_equal(@obj2.returning[0], @numer2)
  end

  def test_4
    assert_equal(@obj2.returning[1], @str)
  end

  def test_5
    assert_equal(@obj2.length[0], @numer2.to_s.length)
  end

  def test_6
    assert_equal(@obj2.length[1], @str.length)
  end
  
  def test_7
    assert_equal(@obj1.class, @obj2.class.superclass)
  end
end
