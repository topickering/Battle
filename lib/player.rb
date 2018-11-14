class Player

  attr_reader :name, :hp

  DEFAULT_NAME = 'Player'
  DEFAULT_HP = 50

  def initialize(name = DEFAULT_NAME, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(opponent)
    opponent.hit_by_opponent
  end

  def hit_by_opponent
    @hp -= 10
  end

end
