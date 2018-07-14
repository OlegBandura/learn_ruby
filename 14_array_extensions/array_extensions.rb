# class Array
class Array
  def sum
    if empty?
      0
    else
      y = 0
      each do |x|
        y += x
      end
      y
    end
  end

  def square
    y = 0
    if empty?
      []
    else
      collect do |x|
        x**2
      end
    end
  end

  def square!
    collect! do |x|
      x**2
    end
  end
end
