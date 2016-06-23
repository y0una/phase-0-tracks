class Item

attr_accessor :name, :color, :price #shortcut to create method to for user to see value of variables

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def to_s
    "Name: #{@name}\nColor: #{@color}\nPrice: #{@price}"
  end

end

new_item = Item.new("Max", "red", "1000")
puts new_item.to_s