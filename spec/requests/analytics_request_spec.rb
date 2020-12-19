require 'rails_helper'

RSpec.describe "Analytics", type: :request do
  describe "GET /analytics" do
    it "requires a password" do
      get analytics_path
      expect(response).to have_http_status(401)
    end
  end
end
