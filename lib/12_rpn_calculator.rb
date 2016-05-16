class RPNCalculator

  def initialize
    @stack = []
  end

  def push(num)
    @stack.push(num)
  end

  def plus
    raise "calculator is empty" if @stack == []
    last_two = @stack.pop(2)  #don't need the last two as @result is being pushed in
    @result = last_two.first + last_two.last
    @stack.push(@result)
  end

  def value
    @result
  end

  def minus
    raise "calculator is empty" if @stack == []
    last_two = @stack.pop(2)
    @result = last_two.first - last_two.last
    @stack.push(@result)
  end

  def divide
    raise "calculator is empty" if @stack == []
    last_two = @stack.pop(2)
    @result = last_two.first.to_f / last_two.last
    @stack.push(@result)
  end

  def times
    raise "calculator is empty" if @stack == []
    last_two = @stack.pop(2)
    @result = last_two.first * last_two.last
    @stack.push(@result)
  end

  def tokens(string)
    operators = ['+', '-', '*', '/']
    output_token = []
    string.gsub(/\S/) do |element|    # \S is any non-whitespace character
      operators.include?(element) ? output_token << element.to_sym : output_token << element.to_i
    end
    output_token
  end

  def evaluate(string)
    token_string = tokens(string)
    token_string.each do |element|
      if element.is_a? Integer
        @stack << element
      elsif element == :+
        plus
      elsif element == :-
        minus
      elsif element == :*
        times
      elsif element == :/
        divide
      end
    end
    @result
   end
end
