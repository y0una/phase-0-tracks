# allow an interior designer to enter the details of a given client:
# client's name, age, number of children, decor theme, and so on
# Prompt the designer/user for all of this information.

puts "Please fill out some information about the client.
Full name: "
name = gets.chomp

puts "Age: "
age = gets.chomp.to_i
# Convert any user input to the appropriate data type with .to_i

puts "Email: "
email = gets.chomp

puts "Number of children: "
no_of_children = gets.chomp.to_i

puts "Preferred type of decor: "
decor = gets.chomp

puts "Do you like color?"
like_color = gets.chomp

puts "What's the maximum number of colors to use?"
max_colors = gets.chomp.to_i

client_data = {
  Name: name,
  Age: age,
  Email: email,
  Children: no_of_children,
  Decor: decor,
  Likes_Color: like_color,
  Maxium_Colors: max_colors
}
# Print the hash back out to the screen when the designer has answered all of the questions.
puts "#{client_data}"
# Update a key
puts "Change maximum number of colors to: "
new_max_colors = gets.chomp
client_data.merge!(Maxium_Colors: new_max_colors)
# Print the latest version of the hash, and exit the program.
puts "#{client_data}"


