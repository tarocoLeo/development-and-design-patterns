class Carrinho
  def initialize
    @items = []
  end

  def add_item(item_id)
    item = Item.all.find { |item| item.id == item_id }
    @items << item if item
  end

  def items_list
    @items
  end
end