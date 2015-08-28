require 'spec_helper'

describe 'create venue path', {type: :feature} do
  it 'allows viewers to view all venues' do
    visit '/'
    click_link 'View All Venues'
    expect(page).to have_content 'Here is a list of Venues:'
  end

end 