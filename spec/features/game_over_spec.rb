RSpec.feature "Game over", :type => :feature do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Next Turn'
      #attack_and_confirm
      #allow(Kernel).to receive(:rand).and_return(60)
      #allow(@player2).to receive(:attacked).and_return(60)
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Player1 loses!'
    end
  end
end
