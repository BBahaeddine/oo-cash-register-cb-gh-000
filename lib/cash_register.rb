class CashRegister
  attr_accessor :total
  @@discount
  # attr_accessor :discount
  
  def initialize(discount=0)
    @@discount = discount
    @total = 0
  end
  
  def discount
    @@discount
  end
  
  def add_item(title, price, qte)
    @total += price
  end
end
