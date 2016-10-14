

feature 'Switch' do
  scenario 'allow the user to switch' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content("Kath's turn!")
  end

  scenario 'allow the another user to switch' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content("Kyaw's turn!")
  end

end
