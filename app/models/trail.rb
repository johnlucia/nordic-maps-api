class Trail < ApplicationRecord
  validate :validate_coordinates

  def validate_coordinates
    begin
      data = JSON.parse(coordinates)
      valid = data.kind_of?(Array) && data.length > 2
    rescue
      valid = false
    end

    valid ? true : errors.add(:coordinates, "Must be a valid JSON array")
  end

  def parsed_coordinates
    begin
      JSON.parse(coordinates)
    rescue
      return nil
    end
  end
end
