class Destination < ActiveRecord::Base
  attr_accessible :uid, :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
