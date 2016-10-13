require './app.rb'
require 'spec_helper'

feature 'Hit point information of player 1' do
  scenario "allow player1 to see player1's hit points" do
  sign_in_and_play
  expect(page).to have_content("Li's hit points: 60")
  end
end

feature 'Hit point information of player 2' do
  scenario "allow player1 to see player2's hit points" do
  sign_in_and_play
  expect(page).to have_content("Katy's hit points: 60")
  end
end
