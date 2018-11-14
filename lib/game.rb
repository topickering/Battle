require_relative 'player'

class Game

attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(opponent)
    opponent.hit_by_opponent
  end

end
