class Player
  attr_reader :name, :hit_points
  DEFAULT_HP = 100
  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def reduce_hp
    @hit_points -= 10
  end

  def attack(player)
    player.reduce_hp
  end
end

# name_1 = Player.new(Freddie)
