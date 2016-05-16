def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, re = 2)
  repeat_string = string
  (re - 1).times do
    repeat_string += ' ' + string
  end
  return repeat_string
end

def start_of_word(string, index)
  slice_string = string.slice(0, index)
  return slice_string
end

def first_word(string)
  split_string = string.split(' ')
  return split_string[0]
end

def titleize(string)
  split_string = string.split(" ")
  little_words = ["the", "and", "over"]
  new_string = []
  split_string.each_with_index do |element, idx|
      little_words.include?(element) && idx > 0 ? new_string << element : new_string << element.capitalize
    end
    return new_string.join(' ')
end
