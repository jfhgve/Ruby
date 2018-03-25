require './lab7_1.rb'
require 'minitest/autorun'
# Class for testing
class TestProg < MiniTest::Unit::TestCase
 def test_1
    100.times do
      gen
      gen_file
      File.open './ffile.txt' do |ffile|
        File.open './gfile.txt' do |gfile|
          50.times do
		  res1 = ffile.gets.to_i
          assert_equal(res1, gfile.gets.to_i) if (res1 % 3).zero? && (res1 % 7 != 0)
          end
        end
      end
    end
  end
end
