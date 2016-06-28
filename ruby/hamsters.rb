puts "What's the hamster's name?"
name = gets.chomp

puts "On a scale of 1 to 10 how loud is #{name}?"
loudness = gets.chomp.to_i

puts "What is #{name}'s fur color?"
fcolor = gets.chomp

puts "Is #{name} a good candidate for adoption? [y/n]"
should_be_adopted = gets.chomp

puts "What's #{name}'s estimated age?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_i
end


puts "Hamster Information"
puts "Name: #{name}"
puts "Loudness of #{name}: #{loudness}"
puts "Fur color: #{fcolor}"
puts "Should be adopted: #{should_be_adopted}"
if age == nil
  puts "Estimated age: N/A"
else
  puts "Estimated age: #{age}"
end