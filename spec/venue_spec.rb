describe(Venue) do
  it {has_and_belongs_to_many (:venues) }

  describe('#capitalize') do
    it 'capitalizes the title of the venue' do
      test_venue= Venue.create({:title=> 'metropolis'})
      expect(test_venue.name()).to(eq('Metropolis'))
    end
  end

  describe('#validates') do
    it 'validates presence of venue title in title field' do
      test_venue = Venue.create({:title => ""})
      expect(test_venue.save()).to(eq(false))
    end
  end

end



end


