$list_hash={}
# Method to create a list
def create_list(user_list)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# puts ""
# steps:
  # [fill in any steps here]
  list_array = user_list.split(" ")
  # set default quantity
  quanity = 1
  # print the list to the console [can you use one of your other methods here?]
  p list_array.collect { |item| [item, quanity] }
  $list_hash = Hash[list_array.collect { |item| [item, quanity] } ]
# output: [what data type goes here, array or hash?] Print result in hash
  p $list_hash
  $list_hash
end
# Method to add an item to a list
# take input of item qty use split method to make array

# input: item name and optional quantity
# steps:
# output:

def add_to_list (userinput)
  userinputarray=userinput.split(' ')
  $list_hash[userinputarray[0]]=
    if userinputarray[1]==nil
      0
    else userinputarray[1]
    end
end

create_list("carrots grapes tomatoes")
add_to_list("celery")
p $list_hash

# Method to remove an item from the list
# input:
# steps:
# output:

def remove_item(item_to_remove)
  $list_hash.delete_if{|item, quantity|item_to_remove==item} #goes through entire item in delete if hash if item in hash delete from hash
end

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: