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
# ??? How does it know which letter to put into "i"? "abcdefghijklmnopqrstuvwxyz".index("pry"[i])
# "abcdefghijklmnopqrstuvwxyz".index("a") = 0
# "pry"[1] = b
# "pry"[i] =
# "pry"[0].next = "q"
# new_string = new_string + "pry"[i]  ?????? What is this doing-- make the new string equal to new string plus the current index??

def encrypt("pry")
  i = 0 # start with first letter of string // iterate over string and position in array
  new_string = "" # placeholder of new string since it will be generated after
# increase it one letter
  until i == "pry".length # until i == the length of "pry" aka 2 keep running loop
    if "abcdefghijklmnopqrstuvwxyz".index("pry"[i]) == nil # start at 0 index, if the index to my string is equal to nothing // is it included in the alphabet?
      new_string = new_string + "pry"[i]  # ?????? What is this doing-- make the new string equal to new string plus the current index??
    elsif "abcdefghijklmnopqrstuvwxyz".index("pry"[i]) == 25 #
      new_string = new_string + "a"
    else
      new_string = new_string + "pry"[i].next #???????? how does x = x + q work?
      # the string of the next letter make it equal to new_string
    end
    puts "abcdefghijklmnopqrstuvwxyz".index("pry"[i])
    i = i + 1# go onto the next character in the string / increment up 1
  end
  puts new_string
end
# print it out

puts encrypt("pry")