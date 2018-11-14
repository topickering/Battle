feature 'Hit Point Display' do
  scenario "players' hits displayed" do
    visit('/')
    fill_in "player_1_name", with: "A Name"
    fill_in "player_2_name", with: "Another Name"
    click_button 'Submit'
    expect(page).to have_content "A Name's hits:"
    expect(page).to have_content "Another Name's hits:"
  end
end
