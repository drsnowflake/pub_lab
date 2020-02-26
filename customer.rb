class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy_drink(drink)
    # cost = drink.price
    # @wallet -= cost
    @wallet -= drink.price
  end
end
