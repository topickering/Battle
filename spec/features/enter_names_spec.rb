feature 'Name entry' do
  scenario 'players enter names' do
    visit('/')
    fill_in "player_1_name", with: "A Name"
    fill_in "player_2_name", with: "Another Name"
    click_button 'Submit'
    expect(page).to have_content "A Name"
    expect(page).to have_content "Another Name"
  end


end
