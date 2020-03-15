class Trail < ApplicationRecord
  validate  :validate_coordinates
  validates :uid, uniqueness: true

  def validate_coordinates
    begin
      data = JSON.parse(coordinates_json)
      valid = data.kind_of?(Array) && (data.length > 2)
    rescue
      valid = false
    end
    valid ? true : errors.add(:coordinates_json, "Must be a valid JSON array")
  end

  def coordinates
    begin
      JSON.parse(coordinates_json)
    rescue
      []
    end
  end
end
