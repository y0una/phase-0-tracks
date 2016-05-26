# Hi!

=begin
scope - where in a program a variable is accessible; which var access where

local variable - specific to only small pieces of environment; unique to method; can't access outside of method
- local in method or loop can't be accessed outside; must begin with lowercase letter
 - only within method

global variable - applies to entire coding environment funcitons inside functions can use

  ex: $welcome = "Welcome to Ruby Essentials"
- anywhere

implicit return: whatever is last in function will be returned even if you don't "return" it

side effect:
  modification you make to program that's not the return; change value of global var but not have it be what function returns; not the direct function but process to get to d
- any time change something outside of function

return value: what you're tyring to find out
=end


=begin

Release 0 Examples

$myGlobal = 0

def myPower(a)
  a*a
end

def adder(a,b)
  puts "This is Inside:"  # Side effect
  puts a                  # Side effect
  puts b                  # Side effect


  c = a + b  # not a side effect, because internal to function

  c = myPower(c)  # calls myPower on c

  $myGlobal = a * b * c       # Side effect
  return c
end


d = adder(1,2)
puts "This is the return value"
puts d
puts "This is the global side effect"
puts $myGlobal




puts "agent"[0]

puts "agent"[1]

puts "agent"[1..3]

puts "agent"[1...3]

puts "agent"[1...4]

str = "abcdef"
puts str[3]

puts "mission"[-1]
puts "mission"[-2]

=end

=begin
Youna
Jason
Pseudocode for secret_agents

ENCRYPT method
--------------

- Accept a input string when the method is called
- For each index in the string:
  - if the index is a letter
    - change the index to the next letter, where the next letter for z is a
  - if the index is a space, do nothing to that index
  - move on to the next index and repeat
- Return the modified string

=end

$alphabet = "abcdefghijklmnopqrstuvwxyz"

def encrypt(my_string)
  i = 0
  new_string = ""

  until i == my_string.length
    if $alphabet.index(my_string[i]) == nil
      #do nothing
    elsif $alphabet.index(my_string[i]) == 25
      new_string[i] = "a"
    else
      new_string[i] = my_string[i].next
    end
    i = i + 1
  end

  return new_string
end

#puts encrypt("abc")
#puts encrypt("zed")
#puts encrypt("zed abc")



def decrypt(my_string)
  i = 0
  new_string = ""

  until i == my_string.length
    if $alphabet.index(my_string[i]) == nil #if you can't find a character we're looking at now it's not a letter so don't anything
      #do nothing
    else
      new_string[i] = $alphabet[$alphabet.index(my_string[i])-1] #find index or # of b go to alphabet 1 - 1 ; return alphabet [0] = a
      #wraps automatically from 0 to -1; don't need 3rd condition
    end
    i = i + 1
  end

  return new_string
end

#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt("afe bcd")

#puts decrypt(encrypt("swordfish"))

#This nested call method works because the methods are executed sequentially, so the program finds the result of the encrypt method and passes that string to the decrypt method. Since the methods perform opposite operations, we return the same string we entered after both operations are performed.

=begin
INTERFACE UPGRADE
-----------------
- Ask the user whether they want to encrypt or decrypt
- Get user answer
- Ask user for the password
- Get user password
- Call method selected by the user on the password
- Print the result of the selected method

=end

result = nil

while result == nil
  puts "Do you want to encrypt or decrypt? (encrypt/decrypt)"
  pref = gets.chomp()
  if pref == "encrypt"
    puts "Enter your password: "
    password = gets.chomp()
    result = encrypt(password)
  elsif pref == "decrypt"
    puts "Enter your password: "
    password = gets.chomp()
    result = decrypt(password)
  else
    puts "Please enter [encrypt] or [decrypt]."
  end
end

puts "You entered [#{password}] as your password."
puts "Your #{pref}ed password is [#{result}]."



=begin
DECRYPT method
--------------
- Accept argument when method is called
- For each index in the string:
  - figure out where an index is using .index method
  - move back one letter "e"
      - define variable to alphabet
- Return new index "e"


=end


















