def scan_and_put_str (str)
  count = str.scan(/\w+/).select { |word| word.chars.first == word.chars.last }.count
  puts str if count > 0
  count
end