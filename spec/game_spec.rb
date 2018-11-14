require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'stores player 1' do
    expect(game.player_1).to eq player_1
  end
  it 'stores player 2' do
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'allows a player to inflict damage on an opponent' do
      expect(player_2).to receive(:hit_by_opponent)
      game.attack(player_2)
    end
  end

end
