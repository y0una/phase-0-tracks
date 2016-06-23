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
# "abc"[1] = b
# "abc"[i] =

# new_string = new_string + my_string[i]  ?????? What is this doing-- make the new string equal to new string plus the current index??

def encrypt(my_string)
  i = 0 # index of single charc in string
  new_string = "" # placeholder of new string since it will be generated after
# increase it one letter
  until i == my_string.length # "abc".length aka 2
    if "abcdefghijklmnopqrstuvwxyz".index(my_string[i]) == nil # start at 0 index, if the index to my string is equal to nothing
      new_string = new_string + my_string[i]  # ?????? What is this doing-- make the new string equal to new string plus the current index??
    elsif "abcdefghijklmnopqrstuvwxyz".index(my_string[i]) == 25 #
      new_string = new_string + "a"
    else
      new_string = new_string + my_string[i].next
      # the string of the next letter make it equal to new_string
    end
    puts "abcdefghijklmnopqrstuvwxyz".index(my_string[i])
    i = i + 1# go onto the next character in the string
  end
  puts new_string
end
# print it out

puts encrypt("abc")
puts encrypt("zed")
puts encrypt("zed abc")
puts encrypt("jpslqmwz")

#p new_string



#$alphabet = "abcdefghijklmnopqrstuvwxyz"