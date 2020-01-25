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
  
end
    
  
  
  
