require './laba5_2func'
puts 'Input strings. Empty string to end'
array = []
loop do
  str = gets.to_s.chomp
  break if str.empty?
  array.push(str)
end
puts 'Your strings:'
puts array
puts 'Strings with matches:'
i = 0
array.each do |e|
 i += scan_and_put_str(e)
end
puts i