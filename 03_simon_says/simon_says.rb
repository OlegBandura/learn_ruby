def echo(word_hello)
  word_hello
end

def shout(word_bye)
  word_bye.upcase
end

def repeat(word, repeat = 2)
  ((word + ' ') * (repeat.to_i - 1)) + word
end

def start_of_word(word, letter)
  word[0, letter]
end

def first_word(word)
  splitted_word = word.split(' ')
  splitted_word[0]
end

def titleize(word)
  words = word.split(' ')
  action_word = words[0].capitalize
  words[1..-1].each do |word|
    if word.downcase == 'and' || word.downcase == 'over' || word.downcase == 'the'
      action_word += ' ' + word
    else
      action_word += ' ' + word.capitalize
    end
  end
  action_word
end
