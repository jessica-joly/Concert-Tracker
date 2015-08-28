require 'spec_helper'

describe(Venue) do
  describe('#bands')do
    it 'shows all the bands that belong to a venue' do
      test_venue = Venue.create({:title => 'metropolis'})
      test_band = Band.create({:name => 'Drake',:venue_ids => [test_venue.id()]})
      expect(test_venue.bands()).to(eq([test_band]))	
    end	
  end
   
  describe('#capitalize') do
    it 'capitalizes the title of the venue' do
      test_venue = Venue.create({:title => 'metropolis'})
      expect(test_venue.title()).to(eq('Metropolis'))
    end
  end

  describe('#validates') do
    it 'validates presence of venue title in title field' do
      test_venue = Venue.create({:title => ""})
      expect(test_venue.save()).to(eq(false))
    end
  end

end




