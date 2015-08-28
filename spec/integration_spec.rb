require 'spec_helper'

describe 'create band path', {type: :feature} do
  it 'allows viewers to see the list of bands' do
  	visit '/'
  	click_link 'View All Bands'
  	expect(page).to have_content 'Here is a list of bands:'
  end	

  it 'can add a new band' do
    visit '/bands/'
  	fill_in 'name', with: 'Arcade fire'
  	click_button 'Submit'
  	expect(page).to have_content 'Arcade fire'  
 end	

  it 'can delete a band from the list' do
  	band = Band.create({name: 'Arcade fire'})
  	visit '/bands/'
  	click_button 'Delete'
  	expect(page).not_to have_content 'Arcade fire' 
  end	
  
  it 'allows users to view specific band page' do
  	band = Band.create({name: 'Arcade fire'})
  	visit '/bands/'
  	click_link 'Arcade fire'
  	expect(page).to have_content 'Arcade fire'  
  end	

end 