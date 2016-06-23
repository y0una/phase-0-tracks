def introductions
  puts "Hello, what do you like to do?"
  yield("play tennis", "bike")
end

introductions { |hobby1, hobby2| puts "I like to #{hobby1} and #{hobby2}!"}