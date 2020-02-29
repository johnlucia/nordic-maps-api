class Sponsor < ApplicationRecord
  belongs_to :sponsorship_level, :optional => true

  def self.main_sponsor
    main_sponsorship_level = SponsorshipLevel.find_by_name "Main"
    main_sponsorship_level.sponsors.where(active: true).first
  end

  def self.secondary_sponsors
    secondary_sponsorship_level = SponsorshipLevel.find_by_name "Secondary"
    secondary_sponsorship_level.sponsors.where(active: true)
  end
end
