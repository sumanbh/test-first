class Book
  attr_accessor :title

  def title
    little_words = ['the', 'a', 'an', 'and', 'in', 'of']
    split_title = @title.split(' ')

    new_title = []

    split_title.each_with_index do |word, index|
      if little_words.include?(word) == false || index == 0 #because first word is always capitalized
        new_title << word.capitalize
      else
        new_title << word
      end
    end
    new_title.join(' ')
  end
end
