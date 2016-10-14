

feature 'Start' do
  scenario 'Get players names and display them' do
    sign_in_and_play
    expect(page).to have_content('Kyaw vs. Kath')
  end
end
