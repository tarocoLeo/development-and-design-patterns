class Budget
  def initialize(cart)
    @cart = cart
  end

  def calculate_total_price
    total_price = 0

    @cart.each do |item|
      item = Item.all.find { |item| item.id == item.id }
      total_price += item_price(item) if item
    end

    total_price
  end

  private

  def item_price(item)
    item.value
  end
end