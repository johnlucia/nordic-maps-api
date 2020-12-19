require 'rails_helper'

RSpec.describe "PointsOfInterests", type: :request do
  describe "GET /points_of_interest" do
    it "requires a password" do
      get shelters_path
      expect(response).to have_http_status(401)
    end
  end
end
