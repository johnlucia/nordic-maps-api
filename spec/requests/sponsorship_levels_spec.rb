require 'rails_helper'

RSpec.describe "SponsorshipLevels", type: :request do
  describe "GET /sponsorship_levels" do
    it "requires a password" do
      get sponsorship_levels_path
      expect(response).to have_http_status(401)
    end
  end
end
