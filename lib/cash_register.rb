class CashRegister
  attr_accessor :total, :discount, :last_transaction, :discount_total
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
  end
  
  def apply_discount
    @discount_total = (@total.to_f * @discount
  end
  
end
