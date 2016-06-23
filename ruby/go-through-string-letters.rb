index = 0
secret_password = "unicorn"

# strings are zero-indexed,
# so .length on a string will always
# return 1 more than the largest index.
# If length is 7, the index of the
# last letter is 6.

puts "Length of password is #{secret_password.length} letters."

puts "The letter at index 6 is #{secret_password[6]}."

# let's use .length to loop
# through the word
# and simply print each letter ...
while index < secret_password.length
  p secret_password[index]
  index += 1
end

# or loop through and do something
# interesting with each letter
index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].upcase!
  index += 1
end

puts secret_password
