require 'rails_helper'

RSpec.describe "Junctions", type: :request do
  describe "GET /junctions" do
    it "requires a password" do
      get junctions_path
      expect(response).to have_http_status(401)
    end
  end
end
