class River
  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    @fish.count
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end
end
