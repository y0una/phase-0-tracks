$history = []
def calculate_from_user_input()
  user_input=""
  while true
    puts "Put in an integer *space bar* operation sign *space bar* another integer. To exit type 'done'."
    user_input_string = gets.chomp
    if user_input_string != "done"
      user_input = user_input_string.split(" ")
      x = calculate(user_input[0].to_i, user_input[1], user_input[2].to_i) #store what you get into x
      puts x
      $history.push(user_input_string + "=" + x.to_s)
    else
      return
    end
  end
end

  def calculate(int, oper, int2)
    if oper == '+'
      return int + int2 #returns back to calc_from_user_input
    elsif oper == '-'
      return int - int2
    elsif oper == '*'
      return int * int2
    else oper == '/'
      return int / int2
    end
  end

calculate_from_user_input
puts $history.size.to_s + " calculations performed:"
$history.each {|a| puts a}

#puts calculate(4, '+', 5)
#puts calculate(4, '-', 5)
#puts calculate(4, '*', 5)
#puts calculate(4, '/', 5)