require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative("../Customer")
require_relative("../Drink")
class CustomerTest < MiniTest::Test
  def setup()
    @customer1 = Customer.new("Moira", 2000)
    @customer2 = Customer.new("Rob", 5000)
    @drink3 = Drink.new("beer", 550)
  end

  def test_customer_has_name
    assert_equal("Moira", @customer1.name)
  end

  def test_customer_has_cash
    assert_equal(5000, @customer2.wallet)
  end

  def test_customer_buys_a_drink
    assert_equal(1450, @customer1.buy_drink(@drink3))
  end

end
