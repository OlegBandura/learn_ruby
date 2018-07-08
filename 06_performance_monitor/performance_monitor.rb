def measure(how_many_hours = 1)
  st_time = Time.now
  how_many_hours.times do |_|
    yield
  end
  end_time = Time.now
  ended = end_time - st_time
  return ended if how_many_hours == 1
  ended / how_many_hours unless how_many_hours == 1
end
