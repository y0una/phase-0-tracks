# If a letter is capitalized and in first half of alphabet, it becomes "bloop"

# Otherwise, if letter is capitalized or it's letter "e" becomes "buzz"

# If it's not a letter at all, it becomes "boing"

# Otherwise, it becomes "beep"

# "Happy Halloween!"

def translate_char(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  first_half = alphabet < "n" # n is the point right after half way
  is_capitalized = (char.upcase == char) # if char is equal to uppercased char then it is capitalized

    if is_capitalized && first_half
      "bloop"
    elsif is_capitalized || char == "e"
      "buzz"
    elsif
      alphabet.index(char.downcase) == nil # if lowercase version doesn't appear becomes boing / if not in index !alphabet.index(char.downcase)
      "boing"
    else
      "beep"
    end
  end

# method translate phrase iterates through an entire phrase
# loops through phrase given
def translate_phrase(phrase)
  char_index = 0 # character number
  translated_response = "" # translated response
  while char_index < phrase.length # while char num less than length of phrase
    translated_response << translate_char(phrase[char_index]) # takes each char index add to translated response array
    char_index = char_index +1 # go on to the next character
  end
  translated_response
end

puts translate_phrase("Happy Halloween!")

#== "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"
# is the result of this translated phrase this string?



# alphabet.length / 2
# half = alphabet / 2
# .downcase .upcase .index