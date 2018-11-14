require 'player'

describe Player do

  it 'stores a name' do
    expect(subject.name).to eq 'Player'
  end

  describe '#hit_by_opponent' do
    it "reduces an opponent's hp by 10" do
      expect { subject.hit_by_opponent }.to change{ subject.hp }.by -10
    end
  end

end
