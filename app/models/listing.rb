class Listing < ActiveRecord::Base
  belongs_to :city
  belongs_to :agent

  def self.listing_rent
    self.select{|listings| listings.to_rent ? listings : nil }
  end

  def self.listing_buy
    self.select{|listings| listings.to_buy ? listings : nil }
  end

  def self.listing_city
    self.all.order(:city)
    
  end



end