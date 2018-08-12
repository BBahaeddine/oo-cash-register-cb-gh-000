class CashRegister
  attr_accessor :total
  attr_accessor :discount
  
  def initialize
    @total = 0
  end
  
  def self.discount(discount)
    cashRegister = self.new
    @discount = discount
  end
end
