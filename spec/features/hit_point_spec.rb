feature 'Hit Point Display' do
  scenario "players' hits displayed" do
    sign_in_and_play
    expect(page).to have_content "A Name's hits:"
    expect(page).to have_content "Another Name's hits:"
  end
end
