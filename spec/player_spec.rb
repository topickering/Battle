require 'player'

describe Player do

  let(:standard_attack) { double :attack }
  subject(:player) { described_class.new('Player', 50, standard_attack)}

  it 'stores a name' do
    expect(subject.name).to eq 'Player'
  end

  describe '#hit_by_opponent' do
    it "reduces a player's hp" do
      allow(standard_attack).to receive(:standard_attack) { 10 }
      expect { player.hit_by_opponent }.to change { player.hp }.by(-10)
    end
  end

end
