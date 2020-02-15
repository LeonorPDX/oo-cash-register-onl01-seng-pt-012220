class CashRegister
  attr_accessor :total, :discount, :last_transaction, :discount_total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
  end
  
  def apply_discount
    if @discount > 0
       @discount = @discount/100.to_f
       @total = @total - (@total * @discount)
       puts "After the discount, the total comes to #{@total}."
    else
      puts "There is no discount to apply."
    end
  end
  
end
