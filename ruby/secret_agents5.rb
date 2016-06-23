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

# find current string
# ??? How does it know which letter to put into "i"? "abcdefghijklmnopqrstuvwxyz".index(my_string[i])
# "abcdefghijklmnopqrstuvwxyz".index("a") = 0
# my_string[1] = b
# my_string[i] =
# my_string[0].next = "q"
# new_string = new_string + my_string[i]  ?????? What is this doing-- make the new string equal to new string plus the current index??

def encrypt(my_string)
  i = 0 # start with first letter of string
  new_string = "" # placeholder of new string since it will be generated after
# increase it one letter
  until i == my_string.length # until i == the length of my_string aka 3 keep running loop
    if !("a".."z").include?(my_string[i]) # if there is an anti-alphabet in my_string
      new_string = new_string + my_string[i]  # take whatever value in new string take current value in new string and add character we're on right now "" + " " p pr pry pryz; ("+" is tacking on next letter)
    elsif my_string[i] == "z" # or if my_string is a z
      new_string = new_string + "a" # take w/e value we have so far in new_string and add "a"
    else # otherwise
      new_string = new_string + my_string[i].next # take w/e value we have so far and tack on the next letter of string[i]
    end
    i += 1 # go onto the next character in the string / increment up 1 // iterate over string and position in array
  end
  new_string # show me the new string
end
puts encrypt("pryz abc")



def decrypt(my_string)
  i = 0
  new_string = ""

  until i == my_string.length
    if !("a".."z").include?(my_string[i])
      new_string = new_string + my_string[i]
    elsif my_string[i] == "a" # or if my_string is a z
      new_string = new_string + "z"
    else
      new_string = new_string + ("abcdefghijklmnopqrstuvwxyz".index(my_string[i])-1)
    end
    i += 1
  end
  new_string
end

puts decrypt("qsza bcd")
