# Float to big number converter
class Float
  def to_big_i
    (self + 0.5).to_i
  end
end

def ftoc(temperature)
  temperature = (temperature - 32) / (9.0 / 5.0)
  temperature.to_big_i
end

def ctof(temperature)
  temperature = temperature * (9.0 / 5) + 32
end
