class Location < ActiveRecord::Base

  # Geocoder setup
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode

  def short
    splitted = address.split
    "#{splitted[-2]} #{splitted.last}"
  end

end
