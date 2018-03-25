load 'part_3_add.rb'
puts 'Input a,b:'
a,b = gets.to_i,gets.to_i
f1 = lambda {|x| x**2+Math.sin(x/2)}
f2 = lambda {|x| Math.atan(x)+x-1}
puts "Min resolve(lambda)",'for 1 expression: ', root(a,b,f1),'for 2 expression: ', root(a,b,f2)
puts "Min resolve(yield)", 'for 1 expression: ' , root(a,b){|x| x**2+Math.sin(x/2)},'for 2 expression: ', root(a,b){|x| Math.atan(x)+x-1}
