# class Tempersture
class Temperature
  def initialize(hash)
    @farenheit = hash[:f]
    @celsium = hash[:c]
    @farenheit ||= (@celsium.to_f * 9 / 5) + 32 unless @celsium.nil?
    @celsium = (@farenheit - 32) * 5 / 9 unless @farenheit.nil?
  end

  def in_fahrenheit
    @farenheit
  end

  def in_celsius
    @celsium
  end

  def self.from_celsius(temp)
    new(c: temp)
  end

  def self.from_fahrenheit(temp)
    new(f: temp)
  end
end

# class Celsium
class Celsius < Temperature
  def initialize(temp)
    @celsium = temp
    @farenheit = (@celsium.to_f * 9 / 5) + 32 unless @celsium.nil?
  end
end

# class Fahrenheit
class Fahrenheit < Temperature
  def initialize(temp)
    @farenheit = temp
    @celsium = (@farenheit - 32) * 5 / 9 unless @farenheit.nil?
  end
end
