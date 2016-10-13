

feature 'Switch' do
  scenario 'allow the user to switch' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).to have_content("Katy's turn!")
  end

  scenario 'allow the another user to switch' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    click_button('Attack')
    click_link('OK')
    expect(page).to have_content("Li's turn!")
  end

end
