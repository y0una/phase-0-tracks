require_relative 'house2'
require_relative 'room2'
require_relative 'items2'

describe House do
  let(:house) {House.new(30, 40)}
  let(:room1) {Room.new('den', 18, 13)}
  let(:room2) {Room.new('family room', 20, 15)}
  let(:item1) {Item.new('TV', 'black', 1000)}

  def add_items_to_house
    house.add_room(room1)
    house.add_room(room2)
    room1.add_item(item1)
    room2.add_item(item1)
  end

  it "has a readable width" do
    expect(house.width).to eq 30
  end

  it "has a readable length" do
    expect(house.length).to eq 40
  end

  it "can add room" do
    add_items_to_house()
    expect(house.rooms).to eq [room1, room2]
  end

  it "can square footage" do
    expect(house.square_footage).to eq 1200
  end

  it "returns total value of ALL room" do
    add_items_to_house
    expect(house.total_value_all_rooms).to eq 2000
  end

  it "prints items" do
    add_items_to_house
    expect(house.to_s).to eq "den\nName: TV\nColor: black\nPrice: 1000\n\nfamily room\nName: TV\nColor: black\nPrice: 1000\n\n"
  end
=begin
  it "abc" do
    add_items_to_house()
  end
=end

end