def add(first_num, second_num)
  first_num + second_num
end

def subtract(first_num, second_num)
  first_num - second_num
end

def sum(array_of_num)
  array_of_num.reduce(0, :+)   #inject works as well
end

def multiply(array_of_num)
  array_of_num.reduce(1, :*)
end

def power(first_num, second_num)
  first_num ** second_num
end

def factorial(number)
  fct = 1
  while number != 0
    fct *= number
    number -= 1
  end
  return fct
end
