class RPNCalculator
  attr_reader :value

  def initialize
    @numbers = []
    @value = nil
  end

  def push(number)
    @numbers << number
  end

  def clear_stored_numbers
    @numbers = []
  end

  def tokens(characters)
    result = []
    characters.split.each do |c|
      case c
      when /\d/
        result << c.to_i
      else
        result << c.to_sym
      end
    end
    result
  end

  def evaluate(characters)
    result = nil
    characters.split.each do |char|
      case char
      when /\d/
        @numbers << char.to_i
      when '+'
        result = plus
      when '-'
        result = minus
      when '/'
        result = divide
      when '*'
        result = times
      end
    end
    clear_stored_numbers
    result[0]
  end

  def check_enough_numbers
    raise "calculator is empty" if @numbers.length < 2
  end

  def plus
    check_enough_numbers
    @numbers << @value = @numbers.pop + @numbers.pop
  end

  def minus
    check_enough_numbers
    @numbers << @value = -@numbers.pop + @numbers.pop
  end

  def divide
    check_enough_numbers
    @numbers << @value = 1.0 / @numbers.pop * @numbers.pop
  end

  def times
    check_enough_numbers
    @numbers << @value = @numbers.pop * @numbers.pop
  end
end