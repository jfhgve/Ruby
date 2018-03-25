def func(x)
  if x > 0.0
    Math.log(x) / Math.cos(x)**2 + x**3 - 5
  else
    'Invalid expression'
  end
end
