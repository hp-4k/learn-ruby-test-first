def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, number_of_times = 2)
  ([message] * number_of_times).join(' ')
end

def start_of_word(word, number_of_letters)
  word[0...number_of_letters]
end

def first_word(text)
  text.split.first
end

def titleize(text)
  exceptions = %w{ and the over }
  words = text.split.
  each { |word| word.capitalize! unless
    exceptions.include?(word) }
  words.first.capitalize!
  words.join(' ')
end