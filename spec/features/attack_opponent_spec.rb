feature 'Attack opponent' do
  scenario "players 1 hits player 2" do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Player 2 hit!"
  end
end
