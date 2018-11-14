feature 'Hit Point Display' do
  scenario "players' hits displayed" do
    sign_in_and_play
    expect(page).to have_content "Player 1's health:"
    expect(page).to have_content "Player 2's health:"
  end
end
