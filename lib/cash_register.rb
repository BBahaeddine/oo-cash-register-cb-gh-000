class CashRegister
  attr_accessor :total
  attr_accessor :discount
  
  def initialize(discount)
    @discount = discount
    @total = 0
  end
  
  # def self.discount(discount)
  #   cashRegister = self.new
  #   @discount = discount
  # end
end
