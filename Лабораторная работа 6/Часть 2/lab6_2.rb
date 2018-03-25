
def integrate1(x0, x1, n)
  dx = (x1 - x0) / n
  x = x0 + dx
  sum = (f(x0) + f(x1)) * dx / 2.0
  ax = Array.new(n - 1) { |index| x0 + (index + 1) * dx } # +1  чтобы не уйти за границы
  ax.each { |x| sum += f(x) * dx }
  sum
end

def f(x)
  Math.sin(x) + 1.0
end

def integrate(x0, x1, eps)
  enum = Enumerator.new do |y|
    n = 4
    y1 = integrate1(x0, x1, n)
    y2 = Math::PI + 2.0
    loop do
      y.yield y1, y2, n
      y1 = integrate1(x0, x1, n)
      n += 1
    end
  end
  array = enum.take_while do |y1, y2|
    (y1 - y2).abs >= eps
  end
  #puts array[-1][-1]
  array[-1][1]
end
