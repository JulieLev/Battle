describe 'Switch turns' do
  context "seeing which player's turn it is" do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Player1's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Next Turn'
      expect(page).not_to have_content "Player1's turn"
      expect(page).to have_content "Player2's turn"
    end

    scenario 'after player 2 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Next Turn'
      click_button 'Attack'
      click_button 'Next Turn'
      expect(page).not_to have_content "Player2's turn"
      expect(page).to have_content "Player1's turn"
    end
  end
end
