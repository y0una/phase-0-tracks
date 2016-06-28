puts "How many employees will be processed?"
emp_no = gets.chomp.to_i

i=0
loop do

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  yob = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? [y/n]"
  like_garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance? [y/n]"
  hi = gets.chomp

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if (2016 - yob == age) && (like_garlic == "y" || hi == "y") == true
  puts "Probably not a vampire"
elsif

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
(2016 - yob != age) && (like_garlic == "n" || hi == "n") == true
puts "Probably a vampire"

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif (2016 - yob != age) && (like_garlic == "n" && hi == "n") == true
  puts "Almost certainly a vampire."

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif (name == "Drake Cula") || (name == "Tu Fang")
  puts "Definitely a vampire"

# Otherwise, print “Results inconclusive.”
else
  puts "Results inconclusive."
end

i+=1
break if i == emp_no
end

# In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

# As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”

allergies =""
allergy_names = []

until allergies == "done"
  puts "Please name any allergies you have one at a time. Type 'done' when finished."
  allergies = gets.chomp
  allergy_names << allergies #stick allergy into allergy names array .push
  if allergies == "sunshine"
    puts "Probably a vampire"
  end
end

puts allergy_names

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"


=begin
something I did before
loop do
  puts "Please name any allergies you have one at a time. Type 'done' when finished."
  allergies = gets.chomp
  if allergies == "sunshine"
    puts "Probably a vampire"
  else
    if allergies== "done"
      return
    end
  end
=end