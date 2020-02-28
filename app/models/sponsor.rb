class Sponsor < ApplicationRecord
  belongs_to :sponsorship_level, :optional => true
end
