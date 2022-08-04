class Listing < ActiveRecord::Base
  belongs_to :city
  belongs_to :agent
end