class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/' do 
      "Hello World!"
  end

  get '/listing' do 
      listings_all = Listing.all
      listings_all.to_json
  end

  get '/listing/rent' do
    properties_for_rent = Listing.select{|listings| listings.to_rent ? listings : nil }
    properties_for_rent.to_json
  end

  get '/listing/buy' do
    properties_for_sale = Listing.select{|listings| listings.to_buy ? listings : nil }
    properties_for_sale.to_json
  end

  get '/listing/city' do
    city_order = Listing.all.order(:city)
    city_order.to_json
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
    city = params[:city_id]
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
    agent = params[:agent_id]

    listing = Listing.create(picture_url:picture, addy:address, city_id:city, zipcode:zipcode, to_buy:buy, to_rent:buy, price:price, sqrft:sqrft, bed:bedrooms, bath:bathrooms, built:built, laundry:laundry, super:superintendent, agent_id:agent)

    {
      success:true,
      data: listing
    }.to_json

  end

  delete '/listing/:id' do
     listing = Listing.find(params[:id])
        Listing.all.to_json
    end

    patch '/listing/:id' do
       update_listing = Listing.find(params[:id])
        update_listing.update(picture: params[:picture_url],
                      address: params[:addy], 
                      city: params[:city_id],
                      zipcode: params[:zipcode],
                      buy: params[:to_buy],
                      rent: params[:to_rent],
                      price: params[:price],
                      sqrft: params[:sqrft],
                      bedrooms: params[:bed],
                      bathrooms: params[:bath],
                      built: params[:built],
                      laundry: params[:laundry],
                      superintendent: params[:super],
                      agent: params[:agent_id])

          Blog.all.to_json
      end
end