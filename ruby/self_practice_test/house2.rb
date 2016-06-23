require_relative "room2"
require_relative "items2"

class House

attr_reader :width, :length, :rooms

  def initialize(width, length)
    @width = width
    @length = length
    @rooms = []
  end

  def add_room(room)
    #@rooms.fill(array.size, 4)
    if @rooms.length < 6
      @rooms << room
    else
      false
    end
  end

  def square_footage
    @width * @length
  end

# thought price was a variable. why does look like method in this case?
  def total_value_all_rooms
    total = 0
    rooms.each do |room|
      total = total + room.total_value_in_room() # calling from room.rb
    end
    total # explicit return
  end

# return each room in the house along with all the items in each room
  def to_s
    string = ""
    @rooms.each do |room|
      string = string + room.name + "\n"
      string = string + room.get_items_string
    end
    string
  end
end
