require_relative 'part_3_add.rb'
require 'minitest/autorun'
# Testing class
class TestProg < MiniTest::Unit::TestCase
  def test_1
    puts 'lambda-test'
    f1 = lambda {|x| x**2+Math.sin(x/2)}
    f2 = lambda {|x| Math.atan(x)+x-1}
    assert_equal(1.0,root(1,10,f1))
    assert_equal(-1.0,root(0,10,f2))
  end
  def test_2
    puts 'yield-test'
    assert_equal(1.0,root(1,10){|x| x**2+Math.sin(x/2)})
    assert_equal(-1.0,root(0,10){|x| Math.atan(x)+x-1})
  end

end
