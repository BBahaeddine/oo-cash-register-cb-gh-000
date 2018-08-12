class CashRegister
  attr_accessor :total
  attr_accessor :discount
  
  def initialize(discount)
    @total = 0
    # @discount = discount
  end
  
  def self.discount(discount)
    cashRegister = self.new
    @discount = discount
  end
end
