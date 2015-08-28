require 'spec_helper'

describe 'create venue path', {type: :feature} do
  it 'allows viewers to view all venues' do
    visit '/'
    click_link 'View All Venues'
    expect(page).to have_content 'Here is a list of venues:'
  end

  it 'can add a new venue to the venue list' do
    visit '/venues/'
  	fill_in 'title', with: 'Commodore'
  	click_button 'Submit'
  	expect(page).to have_content 'Commodore'  
  end	

  it 'shows all the venues that a band has played' do
    test_band = Band.create({:name => 'Modest Mouse'})
    test_venue1 = Venue.create({:title=> "Commodore", :band_ids => [test_band.id()]})
    test_venue2 = Venue.create({:title=> "Metropolis", :band_ids => [test_band.id()]})
    expect(test_band.venues()).to(eq([test_venue1, test_venue2]))
  end
 

  it 'can add a venue to a specific band' do
    band = Band.create({name: 'Arcade fire'})
    venue = Venue.create({title: => 'Commodore'})
    visit "/band/#{band.id()}"	
    fill_in 'title', with: 'Commodore'
    click_button 'Add'
    #visit "/ingredient/#{ingredient.id}"
    expect(page).to have_content 'Commodore'
  end


end 