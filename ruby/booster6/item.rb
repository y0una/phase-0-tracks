# ITEM CLASS
# Attributes:
# - name
# - color
# - price
# Methods:
# - getters for color, price, name
# - to_s override

class Item
  attr_reader :name, :color, :price

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def to_s
    "A #{@color} #{@name} that cost #{@price} cents"
  end
end

=begin
item = Item.new("cardbord box", "brown", 0)
puts item

item = Item.new("piano", "black", 10000)
puts item
=end