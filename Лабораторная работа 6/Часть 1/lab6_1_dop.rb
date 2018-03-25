def integrate(x0, x1, eps)
  n = 2
  y2 = 0.0
  y1 = integrate1(x0, x1, n)
  loop do
    n *= 2
    y2 = integrate1(x0, x1, n)
    break if (y2 - y1).abs < eps
    y1 = y2
  end
  [y2, n]
end

def integrate1(x0, x1, n)
  dx = (x1 - x0) / n
  x = x0 + dx
  sum = (f(x0) + f(x1)) * dx / 2.0
  loop do
    y = f(x)
    sum += dx * y
    x += dx
    break if x > x1 - dx
  end
  sum
end

def f(x)
  Math.sin(x) + 1.0
end
