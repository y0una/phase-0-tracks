=begin
# Encrypt method
# Advance every letter of a string in alphabet one letter forward
# eg. abc --> bcd

- Take string as argument when method called
- Figure out first letter in string
- For each index in string
  - if not letter return nil
  - if index is "z": change letter to an "a" (wrap to front of alphabet)
  - else if it's a letter increment up one letter in alphabet
- Return modified string

.index returns number equivalent in string
.next goes to next letter in alphabet
.length determines the index length of a string
=end

$alphabet = "abcdefghijklmnopqrstuvwxyz"

# find current string
def encrypt(string)
  i = 0 # index of single charc in string
  new_string = "" # placeholder of new string for now
# increase it one letter
  until i == string.length
    if $alphabet.index(string[i]) == nil # if the index to my string "i" in alphabet is equal to nothing
      new_string = new_string + string[i]  # ?? What is this doing-- make the new string equal to new string plus the current index??
    elsif i == 25
      new_string = new_string[i] + $alphabet[0]
    else
      new_string = new_string + string[i].next
      # the string of the next letter make it equal to new_string
    end
    puts $alphabet.index(string[i])
    i = i + 1
    # go onto the next character in the string
  end
  puts new_string
end
# print it out

# Decrypt
puts encrypt("abc")
puts encrypt("zed")
puts encrypt("zed abc")
#p new_string