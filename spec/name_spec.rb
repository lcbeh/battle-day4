require './app.rb'
require 'spec_helper'

feature 'Start' do
  scenario 'Get players names and display them' do
    visit "/"

    fill_in :player1, with: 'Li'
    fill_in :player2, with: 'Katy'
    click_button "Submit"

    expect(page).to have_content('Li vs. Katy')
  end
end
