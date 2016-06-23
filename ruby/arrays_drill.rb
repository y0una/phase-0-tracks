# Release 1
pizza_toppings = []
p pizza_toppings
pizza_toppings += ["mushroom", "tomato", "pepperoni", "sausage", "olives"]
p pizza_toppings

pizza_toppings.delete_at(2)
p pizza_toppings

pizza_toppings.insert(2, "garlic")
p pizza_toppings

p pizza_toppings.shift
p pizza_toppings

if pizza_toppings.include?("sausage") == true
  puts "pizza contains sausage"
else
  puts "nope"
end

candy = ["skittles","reeces", "snickers", "m&ms"]
new_pie = candy + pizza_toppings
p new_pie

# Release 2
def build_array(item1,item2,item3)
  new_array = [item1, item2, item3]
end

def add_to_array(array, added_item)
  array += [added_item]
end

p build_array(1,2,3)

p add_to_array([1,2,3], 4)

p add_to_array(build_array(1,3,7) , 5)
