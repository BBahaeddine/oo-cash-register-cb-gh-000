class CashRegister
  attr_accessor :total
  @@discount
  ITEMS = []
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
    ITEMS << title
  end
  
  def apply_discount
    if @@discount != 0
      @total = @total - ((@total * @@discount) / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    return ITEMS
  end
end
