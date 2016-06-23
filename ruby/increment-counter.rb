# initialize the counter OUTSIDE the loop
counter = 0

while counter < 10
  # print the counter
  puts counter

  # avoid an infinite loop
  counter += 1
end