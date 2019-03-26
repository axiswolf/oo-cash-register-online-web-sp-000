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
        return "There is no discount to apply."
      else @total -= @total * @discount/100
        return "After the discount, the total comes to #{@total}"
      end
  end
  def items
    # returns an array containing all items that have been added
    items=[]
    @cart.each do |things|
      for quantity in 1..item_info[:quantity]
        items << item_info[:name]
      end
      items
  end
  def void_last_transaction
    # subtracts the last transaction from the total
  end
end
