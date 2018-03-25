require './lab7_2.rb'
puts 'Input Number:'
Number = Num.new(gets.to_i)
puts
puts 'First class info:'
Number.print
puts "Length of Number: #{Number.length}"
puts
puts 'Input string and number for second class:'
Inherit = NumWord.new(gets.to_s, gets.to_i)
puts
puts 'Second class info:'
Inherit.print
puts
puts "Value of num: #{Inherit.returning[0]} and string: #{Inherit.returning[1]}"
puts "Length of num: #{Inherit.length[0]} and string: #{Inherit.length[1]}"
