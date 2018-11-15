def sign_in_and_play
  visit('/')
  fill_in "player_1_name", with: "Player 1"
  fill_in "player_2_name", with: "Player 2"
  click_button 'Submit'
end

def player_1_attacks
  sign_in_and_play
  click_button 'Attack Player 2'
end

def attack_cycle
  click_button 'Attack Player 2'
  click_button 'Continue the battle'
  click_button 'Attack Player 1'
  click_button 'Continue the battle'
end

def player_2_loses
  sign_in_and_play
  4.times { attack_cycle }
  click_button "Attack Player 2"
end
