require 'game'
require 'player'

describe Game do

  player_1 = Player.new("Kyaw")
  player_2 = Player.new("Li")
  subject(:game) { described_class.new(player_1, player_2) }

  it "accepts two players" do
    expect(game).to have_attributes( player1: player_1, player2: player_2)
  end

  it "damages the player" do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

end
