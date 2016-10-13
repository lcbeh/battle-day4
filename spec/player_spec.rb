require 'player'

describe Player do
  player1 = Player.new("Kyaw")
  player2 = Player.new("Li")
  it 'return its name' do
    expect(player1.name).to eq "Kyaw"
  end
end
