require 'rails_helper'

RSpec.describe "SponsorshipLevels", type: :request do
  describe "GET /sponsorship_levels" do
    it "works! (now write some real specs)" do
      get sponsorship_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
