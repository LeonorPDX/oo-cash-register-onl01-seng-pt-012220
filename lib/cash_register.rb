class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
  end
  
  def apply_discount
    
    
  end
  
end
