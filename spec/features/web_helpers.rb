
def sign_in_and_play
  visit "/"

  fill_in :player_1_name, with: "Player1"
  fill_in :player_2_name, with: "Player2"
  click_button "Submit"
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'Next Turn'
end
