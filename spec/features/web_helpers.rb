def sign_in_and_play
  visit "/"
  fill_in :player1, with: 'Li'
  fill_in :player2, with: 'Katy'
  click_button "Submit"
end
