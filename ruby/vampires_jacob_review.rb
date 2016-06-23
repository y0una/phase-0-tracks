check_0 = true
while check_0
  puts "How many employes need to be entered"
  employes = gets.to_i
  if employes >= 1
    check_0 = false
  else
    puts "Sorry that is not a valid input"
  end
end
while employes > 0
  # variable to see if applicant is a vampire
  vamp_check1 = false
  vamp_check2 = false
  vamp_check3 = false
  vamp_check4 = false

  first_check = true
  while first_check
    puts "What is your name"
    name = gets.chomp

    if name == "Drake Cula"
      vamp_check1 = true
      first_check = false
    elsif name == "Tu Fang"
      vamp_check1 = true
      first_check = false
    else
      first_check = false
    end
  end

  second_check = true
  while second_check
    puts "How old are you"
    age = gets.chomp
    age_i = age.to_i
    # See if they enter an age that is to large
    if age_i > 100
      second_check = false
    elsif age_i > 0
      vamp_check2 = true
      second_check = false
    else
      puts " I did not understand"
    end
  end

  puts "Where were you born"
  birth_place = gets.chomp

  third_check = true
  while third_check
    puts "Our company orders garlic bread. Should we order you some?(y/n) "
    wants_bread = gets.chomp
    if wants_bread == "y"
      third_check = false
      vamp_check3 = true
    elsif wants_bread == "n"
      third_check = false
    else
      puts "I do not understand"
    end
  end

  fourth_check = true
  while fourth_check
    puts "Would you like to enroll in our company health insurance?(y/n)"
    want_insur = gets.chomp
    if want_insur == "y"
      fourth_check = false
      vamp_check4 = true
    elsif want_insur == "n"
      fourth_check = false
    else
      puts "I did not understand"
    end

  end

  fifth_check = true
  while fifth_check
    puts " Do you have any allergies. Type 'done' when you have entered all allergies."
    allergies = gets.chomp
    if allergies == "done"
      fifth_check = false
    elsif allergies != "sunshine"
    # if sunshine is entered moves to propably a vampire case
    else
      vamp_check2 = false
      vamp_check3 = true
      vamp_check4 = false
      fifth_check = false
    end
  end
  # To see if they entered an incorrect name
  if vamp_check1 == true
    puts "Definitely a vampire."
  # A brance if they enter an age correct
  elsif vamp_check2 == true
    # if they enter the bread or insurance question correct
    if (vamp_check3 || vamp_check4) != false
      puts "Probably not a vampire"
    else
      puts "Results inconclusive."
    end
  # A brance if they answer the age question incorrectly
  elsif vamp_check2 == false
    # If they answer both question incorrectly
    if (vamp_check3 == false && vamp_check4 == false)
      puts "Almost certainly a vampire."
    # If they answer both quest correctly
    elsif (vamp_check3 == true && vamp_check4 == true)
      puts "Results inconclusive."
    else
      puts "Probably a vampire"
    end
  end
# Counter to keep track of number of employes that enter the survey
employes -= 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."