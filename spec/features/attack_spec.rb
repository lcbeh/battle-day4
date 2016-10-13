require './app.rb'
require 'spec_helper'

feature 'Attack' do
  scenario 'Attack opponent and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Li attacked Katy")
  end
end

feature 'Attack' do
  scenario 'Attack opponent and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    click_button('Attack')
    expect(page).to have_content("Katy attacked Li")
  end
end


feature 'Reduce Hit Points' do
  scenario 'Player attacked has HP reduced' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).to have_content("Katy's hit points: 50")
  end

  feature 'Reduce Hit Points' do
    scenario 'Player attacked has HP reduced' do
      sign_in_and_play
      click_button('Attack')
      click_link('OK')
      click_button('Attack')
      click_link('OK')
      expect(page).to have_content("Li's hit points: 50")
    end
  end

end
