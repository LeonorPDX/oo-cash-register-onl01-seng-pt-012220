class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = 0.0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
  end
  
  def apply_discount
    @total * @discount
  end
  
end
