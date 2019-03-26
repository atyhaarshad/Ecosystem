class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @food_in_cave = []
  end

  def take_fish_from_river(river)

    fish = river.fish[0]
    river.remove_fish(fish)
    @stomach.push(fish)
  end

  def roar()
    puts "RAAAAAAWR"
  end

  def food_count()
    @food_in_cave.count()
  end
end
