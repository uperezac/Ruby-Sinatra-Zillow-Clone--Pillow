class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/' do 
      "Hello World!"
  end

  get '/listings' do 
      listings_all = Listing.all
      listings_all.to_json
  end

  get '/cities' do
    cities_all = City.all
    cities_all.to_json
  end

  get '/agents' do
    agents_all = Agent.all
    agents_all.to_json
  end

end