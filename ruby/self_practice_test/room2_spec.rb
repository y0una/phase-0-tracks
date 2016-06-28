require_relative 'room2'
require_relative 'items2'

describe Room do
  let(:room) {Room.new("dining", 10, 15)} # variable
  let(:item1) {Item.new("chair", 'red', 12)}
  let(:item2) {Item.new("table", 'green', 5000)} # Items.new is calling initialize function

  def add_items_to_room()
    room.add_item(item1)
    room.add_item(item2)
  end

  it "has a readable name" do
    expect(room.name).to eq "dining"
  end

  it "has a readable width" do
    expect(room.width).to eq 10
  end

  it "has a readable length" do
    expect(room.length).to eq 15
  end

  it "has a writeable name" do
    room.name = "sunroom"
    expect(room.name).to eq "sunroom"
  end

  it "has writeble items" do
    room.items =  [item2]
    expect(room.items).to eq [item2]
  end

  it "can add item" do
    add_items_to_room() # room is refreshed each round
    expect(room.items).to eq [item1, item2]
  end

  it "returns total value of room" do
    # check prices adds up to total
    add_items_to_room()
    expect(room.total_value_in_room).to eq 5012
  end

  it "turns variables into string" do
    expect(room.to_s).to eq "Name: dining\nWidth: 10\nLength: 15"
  end

  it "prints items" do
    add_items_to_room()
    expect(room.get_items_string).to eq "Name: chair\nColor: red\nPrice: 12\n\nName: table\nColor: green\nPrice: 5000\n\n"
  end

end




# let(:room) allows all functions to access room = Room.new()