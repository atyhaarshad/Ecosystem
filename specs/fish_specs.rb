require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
  end



end
