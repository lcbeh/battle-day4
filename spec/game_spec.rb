require 'game'
require 'player'

describe Game do

  player_1 = Player.new("Kyaw")
  player_2 = Player.new("Li")
  subject(:game) { described_class.new }

  it "damages the player", :focus do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

end
