class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    # new sets an instance variable @total on initialization to zero
    # new optionally takes an employee discount on initalization
    @cart = []
  end
  def self.total(total)
    # returns current total
    @total = total
  end
  def add_item(title,price,quantity=1)
    # accepts a title and a price and increase the total
    # also accepts an optional quantity
    # doesn't forget about the previous total
    item_info = {} # new hash
    item_info[:name] = title
    item_info[:price] = price
    item_info[:quantity] = quantity
    @cart << item_info
    @total += price * quantity
  end
  def apply_discount
    # Cash register was initalized with an employee discount applies the discount to total price
      if @discount == 0
        "No discount"
      end
      @total -= @total * @discount/100
  end
  def self.items
    # returns an array containing all items that have been added
  end
  def self.void_last_transaction
    # subtracts the last transaction from the total
  end
end
