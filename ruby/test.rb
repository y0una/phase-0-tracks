=begin
def cust_greeting (greeting, name)
  "#{greeting}, #{name}"
end
puts cust_greeting ('Yo' 'Youna')

=end

def add(x,y)
  sum = x + y
  p "Sum is #{sum}" # puts would also be fine here
  sum # to make sure the sum is returned instead of our debug statement
end

add(1,2)


#test_var = nil
#puts test_var


test_var = nil
p test_var