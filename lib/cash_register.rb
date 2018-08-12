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
  
  def add_item(title, price, qte=1)
    @total += price * qte
  end
  
  def self.apply_discount
    if @@discount == 0 
      "There is no discount to apply."
    else
    end
  end
end
