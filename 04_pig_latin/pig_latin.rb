def translate(word)
  translator = word.split.map do |hub, i|
    letter = hub.index(/[aeiou]/)
    translator = hub + 'ay' if letter.zero?
    letter += 1 if word[letter] == 'u' && word[letter - 1] == 'q'
    cons = hub.slice!(0, letter)
    translator = hub + cons + 'ay'
  end
  translator.join(' ')
end
