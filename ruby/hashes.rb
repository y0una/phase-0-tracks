# allow an interior designer to enter the details of a given client:
# client's name, age, number of children, decor theme, and so on

=begin
client = {
  name: "Rachel Frank",
  age: "45",
  email: "rachel@frank.com",
  no_of_children: 6,
  decor: "mid-century modern",
  likes_color: "true",
  max_colors: 8
}
=end

# Prompt the designer/user for all of this information.
puts "Please fill out some information about the client.
Full name: "
name = gets.chomp

puts "Age: "
age = gets.chomp

puts "Email: "
email = gets.chomp

puts "Number of children: "
no_of_children = gets.chomp



# Convert any user input to the appropriate data type.

# Print the hash back out to the screen when the designer has answered all of the questions.

# Update a key

# Print the latest version of the hash, and exit the program.
