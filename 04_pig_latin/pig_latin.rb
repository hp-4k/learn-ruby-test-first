def translate(text)
  new_words = []
  text.split.each do |word|
    new_words << process_word(word)
  end
  new_words.join(' ')
end

def process_word(word)
  vowels = 'aeiou'.split('')
  until vowels.include?(word[0])
    word = move_first_letter_to_end(word)
    word = move_first_letter_to_end(word) if word[0] == 'u' and word[-1] == 'q'
  end
  word + 'ay'
end

def move_first_letter_to_end(word)
  word[1..-1] + word[0]
end