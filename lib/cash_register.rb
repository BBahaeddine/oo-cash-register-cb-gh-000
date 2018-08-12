class CashRegister
  attr_accessor :total
  attr_accessor :items
  @@discount
  # @@items = []
  # attr_accessor :discount
  
  def initialize(discount=0)
    @@discount = discount
    @total = 0
    @items = []
  end
  
  def discount
    @@discount
  end
  
  def add_item(title, price, qte = 1)
    count = 0
    @total += price * qte
    loop do
      @items << title
      count += 1 
      if count == qte
        break
      end
    end
  end
  
  def apply_discount
    if @@discount != 0
      @total = @total - ((@total * @@discount) / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
  end
end
