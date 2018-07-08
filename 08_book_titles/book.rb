# class Book
class Book
  attr_reader :title

  def title=(book_title)
    words = book_title.split(' ')
    little_words = %w[the an and a of in]
    words = [words[0].capitalize] + words[1..-1].map do |word|
      if little_words.include? word
        word
      else
        word.capitalize
      end
    end
    @title = words.join(' ')
  end
end
