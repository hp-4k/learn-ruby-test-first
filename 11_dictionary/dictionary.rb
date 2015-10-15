class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(input_data)
    if input_data.instance_of?(Hash) 
      input_data.each do |key, value|
        @entries[key] = value
      end
    else
      @entries[input_data] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    keywords.include?(key)
  end

  def find(phrase)
    results = {}
    @entries.each do |key, value|
      results[key] = value if key.include?(phrase)
    end
    results
  end

  def printable
    result = ''
    keywords.each do |key|
      result += "[#{key}] \"#{@entries[key]}\"\n"
    end
    result.chomp
  end
end