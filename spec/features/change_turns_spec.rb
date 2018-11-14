feature 'Attack opponent' do
  scenario "player 1 hits player 2" do
    player_1_attacks
    click_button "Continue the battle"
    expect(page).to have_content "Player 2, it's your turn to attack!"
  end
end
