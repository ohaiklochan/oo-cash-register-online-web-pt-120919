class CashRegister
  
  attr_accessor :total, :discount, :item, :last_transaction
  
  def intialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(name, price, amount = 1)
    self.total = price * amount
    @items << name
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      return "fter the discount, the total comes to #{total.to_i}"
    else
      return "there is no discount to apply"
    end
  end
  
  def void_last_transaction
    @total -= @price
  end
  
end
    
  
  
  
