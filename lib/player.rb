require_relative 'game'
require_relative 'attack'

class Player

  attr_reader :name, :hp, :attack

  DEFAULT_NAME = 'Player'
  DEFAULT_HP = 50

  def initialize(name = DEFAULT_NAME, hp = DEFAULT_HP, attack = Attack.new)
    @name = name
    @hp = hp
    @attack = attack
  end

  def hit_by_opponent
    @hp -= @attack.standard_attack
  end

  def risky_attack
    @hp -= @attack.high_risk
  end

  def sleep_attack
    @hp -= @attack.sleep_attack
  end

end
