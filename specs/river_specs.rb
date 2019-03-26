require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
# require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")

    @fish = [@fish1, @fish2, @fish3]
    @river = River.new("Nile", @fish)

  end

  def test_fish_count()
    assert_equal(3, @river.fish_count())
  end

  def test_remove_fish()

    @river.remove_fish(@fish1)
    assert_equal(2, @river.fish_count())
  end

end
