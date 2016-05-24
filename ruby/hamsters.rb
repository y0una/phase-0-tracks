puts "What is the hamster's name?"
name = gets.chomp

puts "On a volumne scale of 1 to 10 how loud is " + name + "?"
loudness = gets.chomp
puts loudness.to_i

puts "What's " + name + "\'s fur color?"
fcolor = gets.chomp
puts fcolor

puts "Is " + name + " a good candidate for adoption? [y/n]"
lovable = gets.chomp
puts lovable

puts "What is " + name + "\'s estimated age?"
age = gets.strip
if age.empty?
  age = nil
else
  age = age.to_i
end

p age