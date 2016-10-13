require './app.rb'
require 'spec_helper'

feature 'Attack' do
  scenario 'Attack opponent and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Li attacked Katy")
  end
end
