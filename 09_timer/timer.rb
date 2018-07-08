# class timer
class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0.0
  end

  def time_string
    hours = ((@seconds / 60) / 60)
    minutes = (@seconds / 60) - (hours * 60)
    second = @seconds - (minutes * 60) - (hours * 3600)
    second = '00' if second < 1
    minutes = '00' if minutes < 1
    hours = '00' if hours < 1
    format('%02d:%02d:%02d', hours, minutes, second)
  end
end
