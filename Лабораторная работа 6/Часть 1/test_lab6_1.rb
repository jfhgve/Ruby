require './lab6_1_dop.rb'
require 'minitest/autorun'

class TestProg < MiniTest::Unit::TestCase
  def setup; end

  def test_1
    i = 0.1
    3.times do
      k = integrate(0.0, Math::PI, 0.001)
      assert_in_delta(5.1416, k[0], i)
      i /= 10
    end
  end

  def teardown; end
end
