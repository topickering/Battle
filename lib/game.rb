require_relative 'player'

class Game

attr_reader :player_1, :player_2, :turn_count

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn_count = 1
  end

  def attack(opponent)
    opponent.hit_by_opponent
    take_turn
  end

  def risky_attack(opponent)
    opponent.risky_attack
    take_turn
  end

  def sleep_attack(opponent)
    opponent.sleep_attack
    sent_to_sleep
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  private

  def take_turn
    @turn_count += 1
  end

  def sent_to_sleep
    if rand(4) == 1
      2.times { take_turn }
    else
      take_turn
    end
  end

end
