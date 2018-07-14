# class Dictionary
class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(x)
    if x.is_a?(String)
      @entries[x] = nil
    else
      x.each do |k, v|
        @entries[k] = v
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(x)
    if @entries.keys.include?(x)
      true
    else
      false
    end
  end

  def find(x)
    word = {}
    @entries.each do |k, v|
      word[k] = v if k[0...x.length] == x
      word[k] = v if x[0..1] == k[0..1]
    end
    word
  end

  def printable
    a = @entries.sort.map do |k, v|
      "[#{k}] \"#{v}\""
    end
    a.join("\n")
  end
end
