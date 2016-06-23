class TodoList
#  attr_accessor :items

  def initialize(array)
    @items = array
  end

  def get_items
    @items
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item)
    @items.delete(item)
  end

  def get_item(index)
    @items[index]
  end
end

#list = TodoList.new([1])
#p list.items