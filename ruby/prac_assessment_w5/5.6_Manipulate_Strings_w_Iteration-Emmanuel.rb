vowels = "aeiou".chars

# vowels_hash = {"a"=> "e" , "e" =>"i", "i" => "o", "o" => "u", "'u"=> "a"}

consonants = "bcdfghjklmnpqrstvwxyz".chars

#input real name
puts "Welcome to Kre8-a-name, trusted by spy's around the globe.\rPlease enter the first name you want disguised."

#split then swap first/last name
first_name = gets.chomp.downcase.split('')
first_code = first_name.map! do |ltr|
  if vowels.include?(ltr) && ltr != "u"
    # ltr = vowels_hash[ltr]

    index = vowels.index(ltr)
    ltr = vowels[index + 1]
  elsif ltr == "u"
    ltr = "a"
  elsif ltr != "z"
    index = consonants.index(ltr)
    ltr = consonants[index + 1]
  else
    ltr = "b"
  end
end
p first_code.join



# puts "Please enter the last name. Type 'quit' when done."
# last_name = gets.chomp.downcase.split('')
# last_code = last_name.map! { |ltr| ltr.next }.join

# puts "Thank you for your service. \rYour new cover name is:"
# p last_code.capitalize + " " + first_code.capitalize
