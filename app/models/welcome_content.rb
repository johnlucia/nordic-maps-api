class WelcomeContent < ApplicationRecord
  scope :active_content, -> { where(active: true).order(:position) }
end
