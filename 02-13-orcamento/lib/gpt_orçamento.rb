class Orcamento
  def initialize(carrinho)
    @carrinho = carrinho
  end

  def calcula_preco_total
    preco_total = 0
    quantidades = Hash.new(0)

    # Conta a quantidade de IDs dos itens no carrinho
    @carrinho.each do |item|
      quantidades[item.id] += 1
    end

    # Calcula o preço total do carrinho
    quantidades.each do |item_id, quantidade|
      item = Item.all.find { |item| item.id == item_id }
      preco_total += item.valor * quantidade if item
    end

    preco_total
  end
end
