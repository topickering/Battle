feature 'A player can lose' do
  scenario "player 1 defeats player 2" do
    player_2_loses
    expect(page).to have_content "Player 2 has been defeated"
  end
end
