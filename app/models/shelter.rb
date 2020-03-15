class Shelter < ApplicationRecord
  validate :validate_coordinates
  before_save :convert_coordinates

  def coordinate
    { latitude: latitude, longitude: longitude }
  end

  def convert_coordinates
    self.latitude = latitude.to_f
    self.longitude = longitude.to_f
  end

  def validate_coordinates
    valid = false
    begin
      lat = latitude.to_f
      lon = longitude.to_f
      valid = lat.between?(43,45) && lon.between?(-122, -121)
    rescue
      valid = false
    end
    valid ? true : errors.add(:coordinates, "Please enter a valid Latitude and Longitude")
  end
end
