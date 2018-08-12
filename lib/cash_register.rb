class CashRegister
  attr_accessor :total
  @@discount
  # attr_accessor :discount
  
  def initialize(discount=0)
    @@discount = discount
    @total = 0
  end
  
  def self.discount
    @@discount
  end
  # def self.cash_register_with_discount(discount)
  #   cashRegister = self.new
  #   @@discount = discount
  #   cashRegister
  # end
end
