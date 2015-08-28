require 'bundler/setup'
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/'  do	
  erb(:index)
end

get '/bands/' do
  @bands = Band.all()
  erb(:bands)
end	

post '/bands/new' do
  @band = Band.create({name: params['name']})
  redirect '/bands/'
end	

get '/band/:id' do
  @band = Band.find(params['id'].to_i())
  @venues = Venue.all()	
  erb(:band)	
end	

patch '/band/:id' do
  @band = Band.find(params['id'].to_i())
  @band.update({name: params['name']})
  redirect back
end 

post '/band/:id' do
  @band = Band.find(params['id'].to_i())
  venue = Venue.find(params['venue_id'].to_i())
  @band.venues.push(venue)
  erb(:band)
end

delete '/band/:id' do
  @band = Band.find(params['id'].to_i())
  @band.destroy()
  redirect '/bands/'
end 

get '/venues/' do
  @venues = Venue.all()
  erb(:venues)
end	

post '/venues/new' do
  @venue = Venue.create({title: params['title']})	
  redirect '/venues/'
end	




