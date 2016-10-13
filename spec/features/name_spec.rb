require './app.rb'
require 'spec_helper'

feature 'Start' do
  scenario 'Get players names and display them' do
    sign_in_and_play
    expect(page).to have_content('Li vs. Katy')
  end
end
