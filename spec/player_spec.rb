require 'player'

describe Player do

  it 'stores a name' do
    expect(subject.name).to eq 'Player'
  end

  describe '#attack' do
    it 'allows a player to inflict damage on an opponent' do
      opponent = described_class.new
      expect(opponent).to receive(:hit_by_opponent)
      subject.attack(opponent)
    end
  end

  describe '#hit_by_opponent' do
    it "reduces an opponent's hp by 10" do
      expect { subject.hit_by_opponent }.to change{ subject.hp }.by -10
    end
  end

end
