def add(first_arg, second_arg)
  first_arg + second_arg
end

def subtract(first_arg, second_arg)
  first_arg - second_arg
end

def sum(arr)
  arr.inject(0) { |sum, x| sum + x }
end

def multiply(*num)
  num.inject(:*)
end

def power(first_arg, second_arg)
  first_arg**second_arg
end

def factorial(args)
  return 1 if args.zero?
  return args * factorial(args - 1) if args > 0
end
