require 'rails_helper'

RSpec.describe "Trails", type: :request do
  describe "GET /trails" do
    it "requires a password" do
      get trails_path
      expect(response).to have_http_status(401)
    end
  end
end
