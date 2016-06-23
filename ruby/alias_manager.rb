# Pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name

# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
  def next_vowel(name)
   name = name.downcase
   vowels = "aeiou"
    i = 0
    change = ""
    until i == name.length
      vowels_index = vowels.index(name[i]) # for each letter in first name find if and which index it is in vowels string
       if vowels_index == nil
          change += name[i]
       elsif vowels_index == 4
          change += "a" #edge cases
       else # 0-3 index
          change += vowels[vowels_index+1]
#       p "else: " + change
#      p vowels[vowels_index+1]
       end
        i = i + 1
    end
    return change
  end

# Change all consonants to the next consonant in the alphabet
  def next_consonant(name)
  name = name.downcase
  consonants = "bcdfghjklmnpqrstvwxyz"
  i = 0
  consonants_changed = ""

    until i == name.length
      consonants_index = consonants.index(name[i])
      if consonants_index == nil
        consonants_changed += name[i]
      elsif consonants_index == 20
        consonants_changed += "b"
      else
        consonants_changed += consonants[consonants_index+1]
      end
        i = i + 1
    end
    return consonants_changed
  end

# Run Vowel method then Consonant method
def both_changed(name)
  part_1_vowels = next_vowel(name)
  part_2_consonants = next_consonant(part_1_vowels)
  return part_2_consonants #gives it back to caller
end

# Take user input of the names then store aliases
input = ""
hash = {} #put in hash; once exit still have access to hash
  until input == "quit"
  puts "Give me a first name then a last name. Type 'quit' to exit."
  input = gets.chomp # w/e user types assign to var input
    if input != "quit" # until user types "quit"
      encrypted_both = both_changed(input) #assign/save return value
      hash[input] = encrypted_both #save & set input=encrypted in hash every time
      puts encrypted_both.split(" ").reverse.join(" ")
    else
    end
  end # return input && encrypted_both
  hash.each do |input, encrypted_both| #calls block once for each key in hash, passing the key-value pair as parameters.

  p "#{encrypted_both} is actually #{input}"
end