require_relative "room2"
require_relative "items2"
require_relative "house2"


#Rooms
bedroom1 = Room.new("bedroom", 10, 11)
bedroom2 = Room.new("bedroom", 10, 11)
living_room = Room.new("living room", 10, 11)
bathroom = Room.new("bath room", 10, 11)

#Items
bed = Item.new('bed', 'purple', 12)
lamp = Item.new('lamp', 'yellow', 12)
sofa = Item.new('sofa', 'blue', 12)
toilet = Item.new('toilet', 'white', 12)

#Add Items to Rooms
bedroom1.add_item(bed)
bedroom2.add_item(lamp)
living_room.add_item(sofa)
bathroom.add_item(toilet)

#House
house = House.new('12', '13')


#Add Rooms to House
house.add_room(bedroom1)
house.add_room(bedroom2)
house.add_room(living_room)
house.add_room(bathroom)

puts house