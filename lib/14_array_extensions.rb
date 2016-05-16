class Array
  def sum
    sum = 0
    self.each do |element|
      sum += element
    end
    sum
  end

  def square
    square = []
    self.each do |element|
      square << element ** 2
    end
    square
  end

  def square!
    self.map! do |element|
      element ** 2
    end
    return self if self.empty?
  end
end
