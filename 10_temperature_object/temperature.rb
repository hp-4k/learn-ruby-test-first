class Temperature
  
  def Temperature.from_celsius(temperature)
    Temperature.new c: temperature
  end

  def Temperature.from_fahrenheit(temperature)
    Temperature.new f: temperature
  end

  def initialize(options = {})
    if options[:f] 
      @temperature = options[:f]
    elsif options[:c]
      @temperature = options[:c] * 9.0 / 5 + 32
    end
  end

  def in_fahrenheit
    @temperature
  end

  def in_celsius
    (@temperature - 32) * 5 / 9
  end
end

class Celsius < Temperature
  def initialize(temperature)
    @temperature = temperature * 9.0 / 5 + 32
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @temperature = temperature
  end
end