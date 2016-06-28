require_relative 'items2'

describe Item do
  let(:item) {Item.new("chair", "red", 12)}

  it "has a readable name" do
    expect(item.name).to eq "chair"
  end

  it "has a writeable name" do
    item.name = "lamp"
    expect(item.name).to eq "lamp"
  end

  it "has a readable color" do
    expect(item.color).to eq "red"
  end

  it "has a readable price" do
    expect(item.price).to eq 12
  end

  it "prints out correct string" do
    expect(item.to_s).to eq "Name: chair\nColor: red\nPrice: 12"
  end


end