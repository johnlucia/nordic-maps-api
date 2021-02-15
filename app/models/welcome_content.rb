class WelcomeContent < ApplicationRecord
  validate :has_valid_href?

  scope :active_content, -> { where(active: true).order(:position) }

  def has_valid_href?
    return true if link_url.blank?

    uri = URI.parse link_url
    valid = [URI::HTTP, URI::HTTPS, URI::MailTo].include? uri.class
    valid || errors.add(:link_url, 'not valid. A valid link will usually begin with one of the following: "http://", "https://", or "mailto:"')
  end
end
