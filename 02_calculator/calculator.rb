def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(array)
  array.inject(0) { |result, number| result + number}
end

def multiply(*args)
  args.inject(1) { |result, number| result * number }
end

def power(base, exponent)
  base**exponent
end

def factorial(number)
  result = 1
  number.times { |n| result *= (n+1) }
  result
end