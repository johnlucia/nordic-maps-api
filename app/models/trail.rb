class Trail < ApplicationRecord
  validate  :validate_coordinates
  validates :uid, uniqueness: true

  scope :active_groomed,   -> { where(active: true, groomed: true) }
  scope :active_ungroomed, -> { where(active: true, groomed: false, trail_type: 'ski') }
  scope :active_snowshoe,  -> { where(active: true, trail_type: 'snowshoe') }

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
