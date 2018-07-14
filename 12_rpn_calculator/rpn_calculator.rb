# class RPN Calculator
class RPNCalculator
  def initialize
    @stack = []
  end

  def push(n)
    @stack.push(n)
  end

  def plus
    if @stack.length < 2
      intelligent_fail
    else
      @stack.push(@stack.pop + @stack.pop)
    end
  end

  def minus
    if @stack.length < 2
      intelligent_fail
    else
      number_2 = @stack.pop
      number_1 = @stack.pop
      @stack.push(number_1 - number_2)
    end
  end

  def times
    if @stack.length < 2
      intelligent_fail
    else
      number_2 = @stack.pop
      number_1 = @stack.pop
      @stack.push(number_1 * number_2)
    end
  end

  def divide
    if @stack.length < 2
      intelligent_fail
    else
      number_2 = @stack.pop
      number_1 = @stack.pop
      @stack.push(number_1 / number_2.to_f)
    end
  end

  def value
    if @stack.empty?
      intelligent_fail
    else
      @stack[-1]
    end
  end

  def intelligent_fail
    raise 'calculator is empty'
  end

  def tokens(string)
    @tokens = string.split { ' ' }
    @tokens.map! do |x|
      x = if x == '+'
            :+
          elsif x == '-'
            :-
          elsif x == '/'
            :/
          elsif x == '*'
            :*
          else
            x.to_i
          end
    end
    @tokens
  end

  def evaluate(string)
    @tokens = tokens(string)
    @stack = []
    process until @tokens.empty?
    @stack[0]
  end

  def process
    token = @tokens.shift
    if operator?(token)
      value_2 = @stack.pop
      value_1 = @stack.pop.to_f
      @stack.push(eval(value_1.to_s + token.to_s + value_2.to_s))
    else
      @stack.push(token)
    end
  end

  def operator?(token)
    %i[+ - * /].include?(token)
  end
end
