class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/' do 
      "Hello World!"
  end

  get '/listing' do 
      listings_all = Listing.all
      listings_all.to_json
  end

  get '/city' do
    cities_all = City.all
    cities_all.to_json
  end

  get '/agent' do
    agents_all = Agent.all
    agents_all.to_json
  end

  post '/listing/newlisting' do
    picture = params[:picture_url]
    address = params[:addy]
    city = params[:city.name]
    zipcode = params[:zipcode]
    buy = params[:to_buy]
    rent = params[:to_rent]
    price = params[:price]
    sqrft = params[:sqrft]
    bedrooms = params[:bed]
    bathrooms = params[:bath]
    built = params[:built]
    laundry = params[:laundry]
    superintendent = params[:super]
    agent = params[:agent]

    listing = Listing.create(addy:address, picture_url:picture, bed:bedrooms, bath:bathrooms, zipcode:zipcode,built:built, to_buy:buy to_rent:buy,laundry:,price: 2506,sqrft: 729,super:superintendent,city_id:city,agent_id:agent)

    {
      success:true,
      data: listing
    }.to_json

  end

end