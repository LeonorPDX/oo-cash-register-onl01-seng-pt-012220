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
    if @discount != nil
       @discount = @discount/100.to_f
       @total = @total * @discount
       puts 
    else
      puts "There is no discount to apply."
    end
  end
  
end
