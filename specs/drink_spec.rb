require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative("../Drink")
class DrinkTest < MiniTest::Test
  def setup()
    @drink1 = Drink.new("Wine-white", 500)
    @drink2 = Drink.new("Wine-red", 750)
  end

    def test_drink_has_name
      assert_equal("Wine-white", @drink1.name)
    end

end
