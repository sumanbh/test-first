class Temperature

  def initialize(given_hash)
    @hash = given_hash
  end

  def in_fahrenheit
    ctof
  end

  def in_celsius
    ftoc
  end

  def ftoc
    @hash.keys[0] == :c ? @hash.values[0] : (@hash.values[0].to_f - 32) * 5/9
  end

  def ctof
    @hash.keys[0] == :f ? @hash.values[0] : (@hash.values[0].to_f * 9/5 + 32)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)   #invokes Temperature#initialize
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
