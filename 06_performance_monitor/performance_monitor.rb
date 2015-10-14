def measure(number_of_times = 1, &block)
  start_time = Time.now
  number_of_times.times { block.call }
  (Time.now - start_time) / number_of_times
end