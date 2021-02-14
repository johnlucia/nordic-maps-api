class WelcomeContent < ApplicationRecord
  validate :has_valid_href?

  scope :active_content, -> { where(active: true).order(:position) }

  def has_valid_href?
    return true if link_url.blank?
    
    uri = URI.parse link_url
    valid = [URI::HTTP, URI::HTTPS, URI::MailTo].include? uri.class
    valid || errors.add(:link_url, "Link URL not valid. Valid formats include: `http://www.link.com`, `https://link.com`, and `mailto:bob@gmail.com`")
  end
end
