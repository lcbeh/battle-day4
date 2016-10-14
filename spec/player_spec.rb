
describe Player do
  subject(:player1) { described_class.new("Kyaw") }
  subject(:player2) { described_class.new("Kath") }

  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end

  it "initialize with default hitpoints" do
    expect(player1.hitpoints).to eq Player::DEFAULT_HITPOINTS
  end

  it 'return its name' do
    expect(player1.name).to eq "Kyaw"
  end

  it "reduces the players hit points" do
    expect{player2.receive_damage}.to change {player2.hitpoints}.by (-10)
  end

end
