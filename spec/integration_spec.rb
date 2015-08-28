require 'spec_helper'

describe 'create band path', {type: :feature} do
  it 'allows view to see the list of bands' do
  	visit '/'
  	expect(page).to have_content 'here are no bands in the list yet!'
  end	
  

  it 'can add a new band' do
    visit '/'
  	fill_in 'name', with: 'Drake'
  	click_button 'Submit'
  	expect(page).to have_content 'Drake'  
 end	

end 