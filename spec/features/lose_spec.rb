feature 'Lose' do
  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end
  scenario 'Game over when a player has 0HP' do
    sign_in_and_play
    10.times {attack_and_confirm}
    click_button('Attack')
    expect(page).to have_content("Kath loses the game!")
  end
end
