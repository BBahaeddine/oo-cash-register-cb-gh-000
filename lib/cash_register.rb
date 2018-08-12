class CashRegister
  attr_accessor :total
  attr_accessor :items
  attr_accessor :last_transaction
  @@discount
  # @@items = []
  # attr_accessor :discount
  
  def initialize(discount=0)
    @@discount = discount
    @total = 0
    @items = []
    @last_transaction = 0
  end
  
  def discount
    @@discount
  end
  
  def add_item(title, price, qte = 1)
    count = 0
    @last_transaction = price * qte
    @total += @last_transaction
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
    @total -= @last_transaction
  end
end
