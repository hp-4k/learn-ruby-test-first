class Book
  def title=(title)
    exceptions = %w{ and in the of the a an }
    words = title.split.
      each { |word| word.capitalize! unless exceptions.include?(word)}
    words[0].capitalize!
    @title = words.join(' ')      
  end

  def title
    @title
  end
end