require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative("../Pub")
require_relative("../Drink")
require_relative("../Customer")
class PubTest < MiniTest::Test
  def setup()
    @pub = Pub.new("The_Prince_of_Wales", 20000)

    @drink1 = Drink.new("Wine-white", 500)
    @drink2 = Drink.new("Wine-red", 750)
    @drink_list = [@drink1, @drink2]

    @customer1 = Customer.new("Moira", 2000)
    @customer2 = Customer.new("Rob", 5000)

  end

  def test_pub_has_name
    assert_equal("The_Prince_of_Wales", @pub.name)
  end

  def test_pub_has_till
    assert_equal(20000, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(2, @pub.drink_list(@drink_list).count)
  end

  def test_pub_gains_money
    # @pub.drink_list(@drink_list)
    @pub.sell_drink(@customer1, @drink1)
    assert_equal(1500, @customer1.wallet)
    assert_equal(20500, @pub.till)
  end

end
