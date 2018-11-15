require 'attack'

describe Attack do

  let(:player_1) { double :player, @hp = 50 }
  let(:player_2) { double :player, @hp = 50 }

  it 'records the amount of damage done by an attack' do
    expect(subject).to respond_to(:damage)
  end

end
