class CashRegister
  attr_accessor :new

  def initialize(total)
    @total = 0
    # new sets an instance variable @total on initialization to zero
    # new optionally takes an employee discount on initalization
  end
  def total(total)
    # returns current total
    @total = total
  end
  def add_item(title,price,quantity=0)
    # accepts a title and a price and increase the total
    # also accepts an optional quantity
    # doesn't forget about the previous total
    previous_total = total
  end
  def apply_discount()
    # Cash register was initalized with an employee discount applies the discount to total price
  end
end
