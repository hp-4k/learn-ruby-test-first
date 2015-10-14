class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    number_of_hours = @seconds / 3600
    number_of_minutes = (@seconds - number_of_hours * 3600) / 60
    number_of_seconds = @seconds % 60
    
    number_of_hours = number_of_hours.to_s
    number_of_hours = '0' + number_of_hours if number_of_hours.length == 1

    number_of_minutes = number_of_minutes.to_s
    number_of_minutes = '0' + number_of_minutes if number_of_minutes.length == 1
    
    number_of_seconds = number_of_seconds.to_s
    number_of_seconds = '0' + number_of_seconds if number_of_seconds.length == 1

    "#{number_of_hours}:#{number_of_minutes}:#{number_of_seconds}"
  end
end