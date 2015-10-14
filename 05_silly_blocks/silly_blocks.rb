def reverser
  yield.reverse.split.reverse.join(' ')
end

def adder(number_to_add = 1)
  yield + number_to_add
end

def repeater(number_of_times = 1)
  number_of_times.times { yield }
end