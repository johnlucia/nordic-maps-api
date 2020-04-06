class Sponsor < ApplicationRecord
  belongs_to :sponsorship_level, :optional => true
  scope :active_sponsors, -> { where(active: true).order(:position) }
end
