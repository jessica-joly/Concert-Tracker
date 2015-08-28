describe(Band) do
  it {has_and_belongs_to_many (:bands) }
  
  describe('#capitalize') do
    it 'capitalizes the band name' do
      test_band = Band.create({:name => 'nirvana'})
      expect(test_band.name()).to(eq('Nirvana'))
    end
  end

  describe('#validates') do
    it 'validates presence of band name in name field' do
      test_band = Band.create({:name => ""})
      expect(test_recipe.save()).to(eq(false))
    end
  end

end