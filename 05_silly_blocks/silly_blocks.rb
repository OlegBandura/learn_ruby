def reverser
  result = yield.split(/\b/).map(&:reverse).join
  result
end

reverser { 'hello' }
reverser { %(hello dolly) }

def adder(number = 1)
  yield + 1 * number
end

adder { 5 }

def repeater(number = 1)
  block_was_executed = block_given?
  k = 0
  while k < number
    yield
    k += 1
  end
  block_was_executed
end
