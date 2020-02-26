class Pub

  attr_reader :name, :till

    def initialize(name, till)
      @name = name
      @till = till
      @drink_list = []
    end

    def drink_list(list)
      # list.each {|drink| @drink_list.push(drink)}
      for drink in list
        @drink_list.push(drink)
      end
    end

    def sell_drink(customer, drink)
      customer.buy_drink(drink)
      @till += drink.price

    end

end
