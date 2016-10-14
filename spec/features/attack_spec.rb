
feature 'Attack' do
  scenario 'Attack opponent and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Kyaw attacked Kath")
  end
end

feature 'Attack' do
  scenario 'Attack opponent and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content("Kath attacked Kyaw")
  end
end


feature 'Reduce Hit Points' do
  scenario 'Player attacked has HP reduced' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content("Kath's hit points: 50")
  end

  feature 'Reduce Hit Points' do
    scenario 'Player attacked has HP reduced' do
      sign_in_and_play
      2.times {attack_and_confirm}
      expect(page).to have_content("Kyaw's hit points: 50")
    end
  end

end
