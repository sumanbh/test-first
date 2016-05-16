class Fixnum
  
  #need to finish this

  @@ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  @@teens = []

  def in_words
    num = self
    if num == 0
      return 'zero'
    elsif num < 10
      return @@ones[num - 1]
    end
  end
end
