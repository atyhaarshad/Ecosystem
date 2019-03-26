require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    @river = River.new("Nile", ["Nemo", "Dory"])
    @bear1 = Bear.new("Benny", "Polar")
  end

  def test_can_find_bear_by_name()
    assert_equal("Benny", @bear1.name)
  end

  def test_find_bear_by_type()
    assert_equal("Polar", @bear1.type)
  end

  def test_take_fish_from_river()

    initialFishesInRiver = @river.fish.count
    initialFishesInStomach = @bear1.stomach.count
    @bear1.take_fish_from_river(@river)

    assert_equal(initialFishesInStomach + 1, @bear1.stomach.count)
    assert_equal(initialFishesInRiver - 1, @river.fish.count)
  end

  def test_roar()
    assert_output(/RAAAAAAWR/) { @bear1.roar()}
  end

  def test_food_count()
    assert_equal(0, @bear1.food_count())
  end
end
