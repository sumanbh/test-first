def reverser
  yield.gsub(/\w+/) {|word| word.reverse}
end

def adder(adder = 1)
  yield + adder
end

def repeater(n = 1)
  n.times {yield}
end
