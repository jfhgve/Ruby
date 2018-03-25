def random_num
  rand(99) + 1
end

def gen
  ffile = './ffile.txt'
  File.new(ffile, 'w') unless File.exist? ffile
  mas = Array.new(50) { random_num }
  File.open(ffile, 'w') do |file|
    mas.each do |x|
      file.puts x
    end
  end
end

def gen_file
  ffile = './ffile.txt'
  gfile = './gfile.txt'
  File.open(gfile, 'w') do |g|
    File.foreach(ffile) do |line|
      g.puts line if (line.to_i % 3).zero? && (line.to_i % 7 != 0)
    end
  end
end
