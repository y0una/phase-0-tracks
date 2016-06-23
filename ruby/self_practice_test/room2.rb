require_relative "items2"

class Room

attr_reader :width, :length
attr_accessor :items, :name

  def initialize(name, width, length, items)
    @name = name
    @width = width
    @length = length
    @items = []
  end

# add up prices of items in room
  def total_value_in_room
    total = 0 # start total at zero
    items.each do |items| # go through each array item
      total = total + item.price # add price of item to total
    end
    total
  end

  def to_s
    "Name: #{@name}\nWidth: #{@width}\nLength: #{@length}"
  end

end

# Driver Code
new_room = Room.new("Living Room", 20, 18, "lamp", "chair")
puts new_room.to_s