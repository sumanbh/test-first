def measure(n = 1)
  original_time = Time.now
  n.times {yield}
  difference_in_time = (Time.now - original_time)/n
end
