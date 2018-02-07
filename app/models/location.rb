class Location < ActiveRecord::Base
  belongs_to :user
  validates :latitude, presence: true
  validates :longitude, presence: true 
  geocoded_by :addres #valida la ubicacion
  #after_validation :geocode  #activa la gema
end
