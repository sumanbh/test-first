def re_arrange(word, string)
    word.shift(string.length)
    word += string + ['a', 'y']
    return word.join('').to_s
end

def translate(sentence)

sentence_break = sentence.split(' ')

vowels = /[aeiou]/

new_sentence = []

sentence_break.each do |word|

    #keeps the index of punctuation if found
    punctuation_idx = word.index(/[\.\?\'\,\!]/)
    punctuation_idx.nil? ? length_idx = word.length - 1 : length_idx = word.length - 2

    #checks for capitalization
    capital_checker = 1 if word.capitalize == word

    split_word = word[0..length_idx].split('')

    char = []

    if split_word[0..1].join.downcase == 'qu'
        char.push('q', 'u')
        new_word = re_arrange(split_word, char)

    elsif (split_word[1..2].join == 'qu') && (word.downcase.index(vowels) != 0)  #index of zero implies vowel as first letter
        char.push("#{split_word[0]}", 'q', 'u')
        new_word = re_arrange(split_word, char)

    else
        split_word.each do |element|
            vowels.match(element.downcase) ? break : char << element
          end
        new_word = re_arrange(split_word, char)
    end

    #checking for both capitalization & punctuation
    new_word = new_word.downcase.capitalize if capital_checker == 1
    new_word << word[punctuation_idx] unless punctuation_idx.nil?

    new_sentence << new_word
end

new_sentence.join(' ')
end
