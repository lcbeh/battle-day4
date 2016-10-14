
describe Game do

  player_1 = Player.new("Kyaw")
  player_2 = Player.new("Kath")
  subject(:game) { described_class.new(player_1, player_2) }

  it "accepts two players" do
    expect(game).to have_attributes( player1: player_1, player2: player_2)
  end

  it "damages the player" do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

  it "knows the current player", :focus do
    expect(game.current_turn).to eq player_1
  end

  it "switch the player turn", :focus do
    game.switch_turns
    expect(game.current_turn).to eq player_2
  end


end
