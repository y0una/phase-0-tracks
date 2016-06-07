# GPS 2.2 Create an Electronic Grocery List
# Youna Yang paired with Joe Mazrimas

$list_hash={}
# Method to create a list
def create_list(user_list)
# input: string of items separated by commas (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  list_array = user_list.split(",")
  # set default quantity
  quanity = 1
  # print the list to the console [can you use one of your other methods here?]
  p list_array.collect { |item| [item, quanity] }
  $list_hash = Hash[list_array.collect { |item| [item, quanity] } ]
  # output: [what data type goes here, array or hash?] Print result in hash
  p $list_hash
  $list_hash
end

# Method to add an item to a list. Take input of item qty use split method to make array
def add_to_list (userinput)
# split the
  userinputarray=userinput.split(",")
  $list_hash[userinputarray[0]]=
# input: item name and optional quantity
    if userinputarray[1]==nil
      0
    else userinputarray[1]
    end
end

# Method to remove an item from the list
def remove_item(item_to_remove)
  #go through all items in hash delete if it matches an item in hash
  $list_hash.delete_if{|current_item, quantity|item_to_remove==current_item}
end

# Method to update the quantity of an item
def update_quantity(thingtochange)
    userinputarray=thingtochange.split(",")
    $list_hash.each do|current_item, qty|
      if current_item==userinputarray[0]
        $list_hash[current_item]=userinputarray[1]
      else
      end
    end
end

# Method to print a list and make it look pretty
def print_list()
  $list_hash.each do |current_item, quantity|
  p "#{current_item.strip}: #{quantity.to_i}"
  end
end

create_list("carrots, grapes, tomatoes")
add_to_list("celery")
add_to_list("lemonade,  2")
add_to_list("tomatoes, 3")
add_to_list("onions,  1")
add_to_list("ice cream    ,  4")

p $list_hash

update_quantity("celery,100")
p $list_hash

print_list


=begin
What did you learn about pseudocode from working on this challenge?
- Pseudocode helps me write out my approach on how I will go about solving a problem. The mini steps facilitates the coding so that it's more approachable.

What are the tradeoffs of using arrays and hashes for this challenge?
- Arrays it's not important to know specific order of items. If you wanted to retrieve data you have to know which index it was. Hash you can just search for something and get the value.

What does a method return?
- Arguments are pieces of information that are sent to a method to be modified or used to return a specific result.

What kind of things can you pass into methods as arguments?
- Positional Arguments (a, b, c ---> 1, 2, 3)
- Array Arguments (argument ---> 1, 2, 3)
- Hash arguments (argument ---> a: 1, b: 2, c: 3)
- Keyword Arguments (a: 1, b: 2 ---> a: 1)

How can you pass information between methods?
- can pass information between methods by using the "$" that let's the file know that this is a global variable which should be accessed by all methods

What concepts were solidified in this challenge, and what concepts are still confusing?
- still a bit fuzzy on the hash

=end