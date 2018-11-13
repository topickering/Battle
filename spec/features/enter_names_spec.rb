feature 'Name entry' do
  scenario 'players enter names' do
    visit('/')
    fill_in "Player_1_Name", with: "A Name"
    fill_in "Player_2_Name", with: "Another Name"
    click_button 'Submit'
    expect(page).to have_content "A Name"
    expect(page).to have_content "Another Name"
  end


end
