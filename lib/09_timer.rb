class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def hour
    hour = @seconds.div(3600)  #because max possible seconds at 60:60
    @seconds %= 3600          #div gives you the quotient while modulus gives remainder
    hour > 9 ? @result << hour : @result << '0' + hour.to_s
  end

  def minute
    minute = @seconds.div(60)
    @seconds %= 60
    minute > 9 ? @result << minute : @result << '0' + minute.to_s
  end

  def second
    @seconds > 9 ? @result << @seconds.to_s : @result << '0' + @seconds.to_s
  end

  def time_string
    @result = []

    hour
    minute
    second

    @result.join(':')

  end
end
