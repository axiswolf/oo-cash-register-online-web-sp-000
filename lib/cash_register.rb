class CashRegister
  attr_accessor :new
  def initialize(new="employee_discount")
    @total = 0
    # new sets an instance variable @total on initialization to zero
    # new optionally takes an employee discount on initalization
  end
  def self.total(total)
    # returns current total
    @total = total
  end
  def self.add_item(title,price,quantity=0)
    # accepts a title and a price and increase the total
    # also accepts an optional quantity
    # doesn't forget about the previous total
    previous_total = total
  end
  def self.apply_discount()
    # Cash register was initalized with an employee discount applies the discount to total price
  end
  def self.items
    # returns an array containing all items that have been added
  end
  def self.void_last_transaction
    # subtracts the last transaction from the total
  end
end
