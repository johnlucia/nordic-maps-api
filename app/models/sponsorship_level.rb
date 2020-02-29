class SponsorshipLevel < ApplicationRecord
  has_many :sponsors, foreign_key: :sponsorship_level_id
end
