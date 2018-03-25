def root (a,b,f=0)
  acc = 0.1
  if block_given? then
    min = yield(a)
    ((a/acc).to_i..(b/acc).to_i).each { |x| if yield(x*acc) < min then min=yield(x*acc) end}
    return min
  else
    min = f.call(a)
    ((a/acc).to_i..(b/acc).to_i).each { |x| if f.call(x*acc) < min then min=f.call(x*acc) end}
    return min
    end
end
