require 'spec_helper'

describe(Band) do
  describe('#venues')do
    it 'shows all the venues where a band has played' do
      test_band = Band.create({:name=> 'Drake'})
      test_venue= Venue.create({:title => 'Drake',:band_ids => [test_band.id()]})
      expect(test_band.venues()).to(eq([test_venue]))	
    end	
  end
   
  describe('#capitalize') do
    it 'capitalizes the band name' do
      test_band = Band.create({:name => 'nirvana'})
      expect(test_band.name()).to(eq('Nirvana'))
    end
  end

  describe('#validates') do
    it 'validates presence of band name in name field' do
      test_band = Band.create({:name => ""})
      expect(test_band.save()).to(eq(false))
    end
  end

end