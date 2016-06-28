# can require house.rb and room2.rb and put all driver code at bottom


class Item

attr_accessor :name, :color, :price #shortcut to create method to for user to see value of variables

  def initialize(name, color, price) # can call item.name, item.color, item.price
    @name = name
    @color = color
    @price = price
  end

  def to_s
    "Name: #{@name}\nColor: #{@color}\nPrice: #{@price}"
  end

end
# Driver Code