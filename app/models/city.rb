class City < ActiveRecord::Base
    has_many :listings
    has_many :agents, through: :listings

end