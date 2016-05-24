puts "What is the hamster's name?"
name = gets.chomp

puts "On a volumne scale of 1 to 10 how loud is " + name + "?"
loudness = gets.chomp.to_i

puts "What's " + name + "\'s fur color?"
fcolor = gets.chomp

puts "Is " + name + " a good candidate for adoption? [yes/no]"
lovable = gets.chomp

puts "What is #{name}'s estimated age?"
age = gets.chomp
if age.empty?
  age = nil
else
  age = age.to_i
end


puts "Hamster Information"
puts "Hamster name: " + name
#puts "Volumne level: " + loudness
puts "Fur color: " + fcolor
puts "Good for adoption: " + lovable
puts "Estimated age: #{age}"

# another way to print the estimated age puts "Estimated age: " + age.to_s
# without using string interpolation. JS doesn't have string interpolation so will have to use tht + sign