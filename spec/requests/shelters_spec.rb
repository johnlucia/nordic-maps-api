require 'rails_helper'

RSpec.describe "Shelters", type: :request do
  describe "GET /shelters" do
    it "requires a password" do
      get shelters_path
      expect(response).to have_http_status(401)
    end
  end
end
